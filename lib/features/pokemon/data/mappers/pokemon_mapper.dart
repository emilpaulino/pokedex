import 'package:drift/drift.dart';

import '../../../../core/database/app_database.dart';
import '../dtos/pokemon_dto.dart';
import '../../domain/entities/pokemon.dart';
import '../../domain/entities/pokemon_type.dart';
import '../datasources/pokemon_local_data_source.dart';

PokemonSpeciesCompanion toSpeciesCompanion(
  PokemonSpeciesDto dto,
  DateTime syncedAt,
) {
  return PokemonSpeciesCompanion(
    id: Value(dto.id),
    name: Value(dto.name),
    displayName: Value(dto.displayName),
    nationalDexNumber: Value(
      dto.id,
    ), // en PokeAPI el id de la especie es su número
    generationId: Value(dto.generationId),
    updatedAt: Value(syncedAt),
  );
}

PokemonsCompanion toPokemonCompanion(PokemonDto dto, DateTime syncedAt) {
  final stats = dto.stats;
  return PokemonsCompanion(
    id: Value(dto.id),
    speciesId: Value(dto.species.id),
    name: Value(dto.name),
    isDefault: Value(dto.isDefault),
    height: Value(dto.height / 10), // decímetros → metros
    weight: Value(dto.weight / 10), // hectogramos → kilogramos
    artworkUrl: Value(dto.artworkUrl ?? ''),
    shinyArtworkUrl: Value(dto.shinyArtworkUrl),
    spriteUrl: Value(dto.spriteUrl),
    hp: Value(stats.hp),
    attack: Value(stats.attack),
    defense: Value(stats.defense),
    specialAttack: Value(stats.specialAttack),
    specialDefense: Value(stats.specialDefense),
    speed: Value(stats.speed),
    baseStatTotal: Value(_baseStatTotal(stats)),
    updatedAt: Value(syncedAt),
  );
}

/// Suma de las 6 estadísticas, o null si falta alguna.
int? _baseStatTotal(PokemonStatsDto stats) {
  final values = [
    stats.hp,
    stats.attack,
    stats.defense,
    stats.specialAttack,
    stats.specialDefense,
    stats.speed,
  ];
  if (values.contains(null)) return null;
  return values.fold<int>(0, (sum, value) => sum + value!);
}

List<TypesCompanion> toTypeCompanions(PokemonDto dto) {
  return dto.types
      .map((t) => TypesCompanion(id: Value(t.typeId), name: Value(t.typeName)))
      .toList();
}

List<PokemonTypesCompanion> toPokemonTypeCompanions(PokemonDto dto) {
  return dto.types
      .map(
        (t) => PokemonTypesCompanion(
          pokemonId: Value(dto.id),
          typeId: Value(t.typeId),
          slot: Value(t.slot),
        ),
      )
      .toList();
}

List<AbilitiesCompanion> toAbilityCompanions(PokemonDto dto) {
  return dto.abilities
      .map(
        (a) => AbilitiesCompanion(
          id: Value(a.abilityId),
          name: Value(a.abilityName),
        ),
      )
      .toList();
}

List<PokemonAbilitiesCompanion> toPokemonAbilityCompanions(PokemonDto dto) {
  return dto.abilities
      .map(
        (a) => PokemonAbilitiesCompanion(
          pokemonId: Value(dto.id),
          abilityId: Value(a.abilityId),
          isHidden: Value(a.isHidden),
        ),
      )
      .toList();
}

Pokemon toPokemonEntity(PokemonWithTypes data) {
  final row = data.pokemon;
  final species = data.species;
  return Pokemon(
    id: row.id,
    name: row.name,
    displayName: species.displayName,
    nationalDexNumber: species.nationalDexNumber,
    height: row.height,
    weight: row.weight,
    artworkUrl: row.artworkUrl,
    types: data.types.map(toPokemonTypeEntity).toList(),
  );
}

PokemonType toPokemonTypeEntity(TypeRow row) {
  return PokemonType(id: row.id, name: row.name);
}
