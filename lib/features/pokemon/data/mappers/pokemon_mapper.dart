import 'package:drift/drift.dart';

import '../../../../core/database/app_database.dart';
import '../dtos/pokemon_dto.dart';
import '../../domain/entities/pokemon.dart';

PokemonsCompanion toPokemonCompanion(PokemonDto dto, DateTime syncedAt) {
  return PokemonsCompanion(
    id: Value(dto.id),
    name: Value(dto.name),
    nationalDexNumber: Value(dto.speciesId),
    height: Value(dto.height / 10), // Se convierte de decímetros a metros
    weight: Value(dto.weight / 10), // Se convierte de hectogramos a kilogramos
    artworkUrl: Value(dto.artworkUrl ?? ''),
    updatedAt: Value(syncedAt),
  );
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


Pokemon toPokemonEntity(PokemonRow row) {
  return Pokemon(
    id: row.id,
    name: row.name,
    nationalDexNumber: row.nationalDexNumber,
    height: row.height,
    weight: row.weight,
    artworkUrl: row.artworkUrl,
  );
}