import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/app_database.dart';
import '../../../../core/database/database_provider.dart';
import '../../../../core/error/exceptions.dart';
import '../dtos/pokemon_dto.dart';
import '../mappers/pokemon_mapper.dart';

class PokemonWithTypes {
  PokemonWithTypes(this.pokemon, this.species, this.types);

  final PokemonRow pokemon;
  final PokemonSpeciesRow species;
  final List<TypeRow> types;
}

abstract class PokemonLocalDataSource {
  /// Pokémon con sus tipos, ordenados por número.
  Stream<List<PokemonWithTypes>> watchPokemons();

  /// Guarda una página de la API sin duplicar nada.
  Future<void> savePokemonPage(List<PokemonDto> page, DateTime syncedAt);

  /// Progreso del sync (por qué página va, cuándo terminó, etc)
  Future<SyncMetadataRow?> getSyncMetadata(String resourceKey);
  Stream<SyncMetadataRow?> watchSyncMetadata(String resourceKey);
  Future<void> saveSyncMetadata(SyncMetadataCompanion data);
}

class PokemonLocalDataSourceImpl implements PokemonLocalDataSource {
  PokemonLocalDataSourceImpl(this._db);

  final AppDatabase _db;

  @override
  Stream<List<PokemonWithTypes>> watchPokemons() {
    // Una sola consulta: forma normal + su especie + sus tipos.
    final query =
        _db.select(_db.pokemons).join([
            innerJoin(
              _db.pokemonSpecies,
              _db.pokemonSpecies.id.equalsExp(_db.pokemons.speciesId),
            ),
            leftOuterJoin(
              _db.pokemonTypes,
              _db.pokemonTypes.pokemonId.equalsExp(_db.pokemons.id),
            ),
            leftOuterJoin(
              _db.types,
              _db.types.id.equalsExp(_db.pokemonTypes.typeId),
            ),
          ])
          ..where(_db.pokemons.isDefault.equals(true))
          ..orderBy([
            OrderingTerm.asc(_db.pokemonSpecies.nationalDexNumber),
            OrderingTerm.asc(_db.pokemonTypes.slot),
          ]);

    return query.watch().map((rows) {
      // Agrupa cada forma con todos sus tipos.
      final result = <int, PokemonWithTypes>{};

      for (final row in rows) {
        final pokemon = row.readTable(_db.pokemons);
        final species = row.readTable(_db.pokemonSpecies);
        final type = row.readTableOrNull(_db.types);

        final entry = result.putIfAbsent(
          pokemon.id,
          () => PokemonWithTypes(pokemon, species, []),
        );
        if (type != null) entry.types.add(type);
      }

      return result.values.toList();
    });
  }

  @override
  Future<void> savePokemonPage(List<PokemonDto> page, DateTime syncedAt) async {
    final ids = page.map((dto) => dto.id).toList();

    final species = <int, PokemonSpeciesCompanion>{};
    final types = <int, TypesCompanion>{};
    final abilities = <int, AbilitiesCompanion>{};
    for (final dto in page) {
      species[dto.species.id] = toSpeciesCompanion(dto.species, syncedAt);
      for (final type in toTypeCompanions(dto)) {
        types[type.id.value] = type;
      }
      for (final ability in toAbilityCompanions(dto)) {
        abilities[ability.id.value] = ability;
      }
    }

    try {
      await _db.transaction(() async {
        await _db.batch((batch) {
          batch.insertAllOnConflictUpdate(
            _db.pokemonSpecies,
            species.values.toList(),
          );
          batch.insertAllOnConflictUpdate(_db.types, types.values.toList());
          batch.insertAllOnConflictUpdate(
            _db.abilities,
            abilities.values.toList(),
          );

          batch.insertAllOnConflictUpdate(_db.pokemons, [
            for (final dto in page) toPokemonCompanion(dto, syncedAt),
          ]);

          batch.deleteWhere(_db.pokemonTypes, (t) => t.pokemonId.isIn(ids));
          batch.deleteWhere(_db.pokemonAbilities, (t) => t.pokemonId.isIn(ids));
          for (final dto in page) {
            batch.insertAll(_db.pokemonTypes, toPokemonTypeCompanions(dto));
            batch.insertAll(
              _db.pokemonAbilities,
              toPokemonAbilityCompanions(dto),
            );
          }
        });
      });
    } catch (e) {
      throw CacheException(e.toString());
    }
  }

  @override
  Future<SyncMetadataRow?> getSyncMetadata(String resourceKey) {
    final query = _db.select(_db.syncMetadata)
      ..where((t) => t.resourceKey.equals(resourceKey));
    return query.getSingleOrNull();
  }

  @override
  Stream<SyncMetadataRow?> watchSyncMetadata(String resourceKey) {
    final query = _db.select(_db.syncMetadata)
      ..where((t) => t.resourceKey.equals(resourceKey));
    return query.watchSingleOrNull();
  }

  @override
  Future<void> saveSyncMetadata(SyncMetadataCompanion data) async {
    try {
      await _db.into(_db.syncMetadata).insertOnConflictUpdate(data);
    } catch (e) {
      throw CacheException(e.toString());
    }
  }
}

final pokemonLocalDataSourceProvider = Provider<PokemonLocalDataSource>((ref) {
  return PokemonLocalDataSourceImpl(ref.watch(appDatabaseProvider));
});
