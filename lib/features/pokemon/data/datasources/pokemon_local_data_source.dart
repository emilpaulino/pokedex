import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/app_database.dart';
import '../../../../core/database/database_provider.dart';
import '../../../../core/error/exceptions.dart';
import '../dtos/pokemon_dto.dart';
import '../mappers/pokemon_mapper.dart';

class PokemonWithTypes {
  PokemonWithTypes(this.pokemon, this.types);

  final PokemonRow pokemon;
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
    // Una sola consulta que une Pokemons + PokemonTypes + Types.
    final query = _db.select(_db.pokemons).join([
      leftOuterJoin(
        _db.pokemonTypes,
        _db.pokemonTypes.pokemonId.equalsExp(_db.pokemons.id),
      ),
      leftOuterJoin(
        _db.types,
        _db.types.id.equalsExp(_db.pokemonTypes.typeId),
      ),
    ])
      ..orderBy([
        OrderingTerm.asc(_db.pokemons.nationalDexNumber),
        OrderingTerm.asc(_db.pokemonTypes.slot),
      ]);

    return query.watch().map((rows) {
      // Agrupa las filas: un Pokémon con todos sus tipos.
      final result = <int, PokemonWithTypes>{};

      for (final row in rows) {
        final pokemon = row.readTable(_db.pokemons);
        final type = row.readTableOrNull(_db.types);

        final entry = result.putIfAbsent(
          pokemon.id,
              () => PokemonWithTypes(pokemon, []),
        );
        if (type != null) entry.types.add(type);
      }

      return result.values.toList();
    });
  }

  @override
  Future<void> savePokemonPage(List<PokemonDto> page, DateTime syncedAt) async {
    final ids = page.map((dto) => dto.id).toList();

    try {
      await _db.transaction(() async {
        await _db.batch((batch) {
          // 1. Tipos y habilidades primero ya que las tablas intermedias apuntan a ellos.
          for (final dto in page) {
            batch.insertAllOnConflictUpdate(_db.types, toTypeCompanions(dto));
            batch.insertAllOnConflictUpdate(
              _db.abilities,
              toAbilityCompanions(dto),
            );
          }

          // 2. Los Pokémon (insertar o actualizar).
          for (final dto in page) {
            batch.insertAllOnConflictUpdate(_db.pokemons, [
              toPokemonCompanion(dto, syncedAt),
            ]);
          }

          // 3. Las relaciones se reemplazan completas. Es decir, se borran las
          // de estos Pokémon y se vuelven a insertar tal como vienen de la API.
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