/// Una forma de Pokémon tal como la devuelve la consulta del catálogo.
class PokemonDto {
  const PokemonDto({
    required this.id,
    required this.name,
    required this.isDefault,
    required this.height,
    required this.weight,
    required this.species,
    required this.stats,
    required this.artworkUrl,
    required this.shinyArtworkUrl,
    required this.spriteUrl,
    required this.types,
    required this.abilities,
  });

  final int id;
  final String name;
  final bool isDefault;
  final int height; // decímetros
  final int weight; // hectogramos
  final PokemonSpeciesDto species;
  final PokemonStatsDto stats;
  final String? artworkUrl;
  final String? shinyArtworkUrl;
  final String? spriteUrl;
  final List<PokemonTypeDto> types;
  final List<PokemonAbilityDto> abilities;

  factory PokemonDto.fromJson(Map<String, dynamic> json) {
    final sprites = json['pokemonsprites'] as List<dynamic>;
    final images = sprites.isEmpty
        ? null
        : sprites.first as Map<String, dynamic>;

    return PokemonDto(
      id: json['id'] as int,
      name: json['name'] as String,
      isDefault: json['is_default'] as bool,
      height: json['height'] as int,
      weight: json['weight'] as int,
      species: PokemonSpeciesDto.fromJson(
        json['pokemonspecy'] as Map<String, dynamic>,
      ),
      stats: PokemonStatsDto.fromJson(json['pokemonstats'] as List<dynamic>),
      artworkUrl: images?['artwork'] as String?,
      shinyArtworkUrl: images?['shiny'] as String?,
      spriteUrl: images?['sprite'] as String?,
      types: (json['pokemontypes'] as List<dynamic>)
          .map((e) => PokemonTypeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      abilities: (json['pokemonabilities'] as List<dynamic>)
          .map((e) => PokemonAbilityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

/// La especie a la que pertenece la forma.
class PokemonSpeciesDto {
  const PokemonSpeciesDto({
    required this.id,
    required this.name,
    required this.displayName,
    required this.generationId,
  });

  final int id;
  final String name;
  final String displayName;
  final int? generationId;

  factory PokemonSpeciesDto.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    final officialNames = json['pokemonspeciesnames'] as List<dynamic>;

    return PokemonSpeciesDto(
      id: json['id'] as int,
      name: name,
      // Si la API no trae el nombre oficial, se usa el nombre interno.
      displayName: officialNames.isEmpty
          ? name
          : (officialNames.first as Map<String, dynamic>)['name'] as String,
      generationId: json['generation_id'] as int?,
    );
  }
}

/// Las 6 estadísticas base
class PokemonStatsDto {
  const PokemonStatsDto({
    required this.hp,
    required this.attack,
    required this.defense,
    required this.specialAttack,
    required this.specialDefense,
    required this.speed,
  });

  final int? hp;
  final int? attack;
  final int? defense;
  final int? specialAttack;
  final int? specialDefense;
  final int? speed;

  factory PokemonStatsDto.fromJson(List<dynamic> json) {
    final values = <String, int>{
      for (final item in json.cast<Map<String, dynamic>>())
        (item['stat'] as Map<String, dynamic>)['name'] as String:
            item['base_stat'] as int,
    };

    return PokemonStatsDto(
      hp: values['hp'],
      attack: values['attack'],
      defense: values['defense'],
      specialAttack: values['special-attack'],
      specialDefense: values['special-defense'],
      speed: values['speed'],
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
