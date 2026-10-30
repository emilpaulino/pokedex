class PokemonDto {
  const PokemonDto({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.speciesId,
    required this.artworkUrl,
    required this.types,
    required this.abilities,
  });

  final int id;
  final String name;
  final int height;
  final int weight;
  final int speciesId;
  final String? artworkUrl;
  final List<PokemonTypeDto> types;
  final List<PokemonAbilityDto> abilities;

  factory PokemonDto.fromJson(Map<String, dynamic> json) {
    final sprites = json['pokemonsprites'] as List<dynamic>;

    return PokemonDto(
      id: json['id'] as int,
      name: json['name'] as String,
      height: json['height'] as int,
      weight: json['weight'] as int,
      speciesId: json['pokemon_species_id'] as int,
      artworkUrl: sprites.isEmpty
          ? null
          : (sprites.first as Map<String, dynamic>)['sprites'] as String?,
      types: (json['pokemontypes'] as List<dynamic>)
          .map((e) => PokemonTypeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      abilities: (json['pokemonabilities'] as List<dynamic>)
          .map((e) => PokemonAbilityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class PokemonTypeDto {
  const PokemonTypeDto({
    required this.slot,
    required this.typeId,
    required this.typeName,
  });

  final int slot;
  final int typeId;
  final String typeName;

  factory PokemonTypeDto.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as Map<String, dynamic>;
    return PokemonTypeDto(
      slot: json['slot'] as int,
      typeId: type['id'] as int,
      typeName: type['name'] as String,
    );
  }
}

class PokemonAbilityDto {
  const PokemonAbilityDto({
    required this.isHidden,
    required this.abilityId,
    required this.abilityName,
  });

  final bool isHidden;
  final int abilityId;
  final String abilityName;

  factory PokemonAbilityDto.fromJson(Map<String, dynamic> json) {
    final ability = json['ability'] as Map<String, dynamic>;
    return PokemonAbilityDto(
      isHidden: json['is_hidden'] as bool,
      abilityId: ability['id'] as int,
      abilityName: ability['name'] as String,
    );
  }
}