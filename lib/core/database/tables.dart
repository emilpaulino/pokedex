import 'package:drift/drift.dart';

/// Lo que es igual para todas las formas de un Pokémon.
@DataClassName('PokemonSpeciesRow')
@TableIndex(name: 'idx_species_display_name', columns: {#displayName})
@TableIndex(name: 'idx_species_generation', columns: {#generationId})
@TableIndex(name: 'idx_species_evolution_chain', columns: {#evolutionChainId})
class PokemonSpecies extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()(); // nombre interno de la API
  TextColumn get displayName => text()(); // nombre oficial
  IntColumn get nationalDexNumber => integer().unique()();
  IntColumn get generationId => integer().nullable()();
  IntColumn get evolutionChainId => integer().nullable()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Cada forma concreta de un Pokémon (Vulpix, Vulpix de Alola...).
@DataClassName('PokemonRow')
@TableIndex(name: 'idx_pokemon_species', columns: {#speciesId})
@TableIndex(name: 'idx_pokemon_base_stat_total', columns: {#baseStatTotal})
class Pokemons extends Table {
  IntColumn get id => integer()();
  IntColumn get speciesId => integer().references(PokemonSpecies, #id)();
  TextColumn get name => text()(); // nombre interno de la forma
  BoolColumn get isDefault => boolean()();
  RealColumn get height => real()(); // metros
  RealColumn get weight => real()(); // kilogramos
  TextColumn get artworkUrl => text()();
  TextColumn get shinyArtworkUrl => text().nullable()();
  TextColumn get spriteUrl => text().nullable()();
  IntColumn get hp => integer().nullable()();
  IntColumn get attack => integer().nullable()();
  IntColumn get defense => integer().nullable()();
  IntColumn get specialAttack => integer().nullable()();
  IntColumn get specialDefense => integer().nullable()();
  IntColumn get speed => integer().nullable()();
  IntColumn get baseStatTotal => integer().nullable()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('TypeRow')
class Types extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('PokemonTypeRow')
@TableIndex(name: 'idx_pokemon_types_type', columns: {#typeId})
class PokemonTypes extends Table {
  IntColumn get pokemonId =>
      integer().references(Pokemons, #id, onDelete: KeyAction.cascade)();
  IntColumn get typeId => integer().references(Types, #id)();
  IntColumn get slot => integer()();

  @override
  Set<Column> get primaryKey => {pokemonId, typeId};
}

@DataClassName('AbilityRow')
class Abilities extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get effectSummary => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('PokemonAbilityRow')
class PokemonAbilities extends Table {
  IntColumn get pokemonId =>
      integer().references(Pokemons, #id, onDelete: KeyAction.cascade)();
  IntColumn get abilityId => integer().references(Abilities, #id)();
  BoolColumn get isHidden => boolean()();

  @override
  Set<Column> get primaryKey => {pokemonId, abilityId};
}

@DataClassName('FavoriteRow')
class Favorites extends Table {
  IntColumn get pokemonId => integer().references(Pokemons, #id)();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {pokemonId};
}

@DataClassName('SyncMetadataRow')
class SyncMetadata extends Table {
  TextColumn get resourceKey => text()();
  DateTimeColumn get lastSuccessAt => dateTime().nullable()();
  TextColumn get status => text()();
  IntColumn get cursorOrOffset => integer().nullable()();

  @override
  Set<Column> get primaryKey => {resourceKey};
}

/// Una evolución entre dos especies, con su condición principal.
@DataClassName('EvolutionRow')
@TableIndex(name: 'idx_evolutions_from', columns: {#fromSpeciesId})
class Evolutions extends Table {
  @ReferenceName('outgoingEvolutions')
  IntColumn get fromSpeciesId =>
      integer().references(PokemonSpecies, #id, onDelete: KeyAction.cascade)();
  @ReferenceName('incomingEvolutions')
  IntColumn get toSpeciesId =>
      integer().references(PokemonSpecies, #id, onDelete: KeyAction.cascade)();
  TextColumn get trigger => text()(); // level-up, use-item, trade...
  IntColumn get minLevel => integer().nullable()();
  TextColumn get item => text().nullable()();
  IntColumn get minHappiness => integer().nullable()();
  TextColumn get timeOfDay => text().nullable()();

  @override
  Set<Column> get primaryKey => {fromSpeciesId, toSpeciesId};
}

@DataClassName('EggGroupRow')
class EggGroups extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('SpeciesEggGroupRow')
class SpeciesEggGroups extends Table {
  IntColumn get speciesId =>
      integer().references(PokemonSpecies, #id, onDelete: KeyAction.cascade)();
  IntColumn get eggGroupId => integer().references(EggGroups, #id)();

  @override
  Set<Column> get primaryKey => {speciesId, eggGroupId};
}

/// Grupos de juegos (red-blue, sword-shield...). Los movimientos cambian por grupo.
@DataClassName('VersionGroupRow')
class VersionGroups extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('MoveRow')
class Moves extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  IntColumn get typeId => integer().references(Types, #id)();

  @override
  Set<Column> get primaryKey => {id};
}

/// Qué movimientos aprende cada forma, en qué juego, cómo y a qué nivel.
@DataClassName('PokemonMoveRow')
@TableIndex(
  name: 'idx_pokemon_moves_version',
  columns: {#pokemonId, #versionGroupId},
)
class PokemonMoves extends Table {
  IntColumn get pokemonId =>
      integer().references(Pokemons, #id, onDelete: KeyAction.cascade)();
  IntColumn get moveId => integer().references(Moves, #id)();
  IntColumn get versionGroupId => integer().references(VersionGroups, #id)();
  TextColumn get learnMethod => text()(); // level-up, machine, tutor, egg...
  IntColumn get level => integer()(); // 0 si no se aprende por nivel

  @override
  Set<Column> get primaryKey => {
    pokemonId,
    moveId,
    versionGroupId,
    learnMethod,
    level,
  };
}

/// Juegos en los que aparece cada forma.
@DataClassName('PokemonGameRow')
class PokemonGames extends Table {
  IntColumn get pokemonId =>
      integer().references(Pokemons, #id, onDelete: KeyAction.cascade)();
  TextColumn get gameName => text()(); // red, blue, yellow...

  @override
  Set<Column> get primaryKey => {pokemonId, gameName};
}

/// Cuánto daño hace un tipo atacante a un tipo defensor (en porcentaje).
@DataClassName('TypeEfficacyRow')
class TypeEfficacies extends Table {
  @ReferenceName('attackEfficacies')
  IntColumn get attackingTypeId => integer().references(Types, #id)();
  @ReferenceName('defenseEfficacies')
  IntColumn get defendingTypeId => integer().references(Types, #id)();
  IntColumn get damageFactor => integer()(); // 0, 50, 100 o 200

  @override
  Set<Column> get primaryKey => {attackingTypeId, defendingTypeId};
}

/// Preferencias del usuario que se recuerdan entre sesiones (filtros, orden...).
@DataClassName('AppSettingRow')
class AppSettings extends Table {
  TextColumn get key => text()();
  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {key};
}

/// Una partida de trivia terminada.
@DataClassName('TriviaResultRow')
@TableIndex(name: 'idx_trivia_results_score', columns: {#score})
class TriviaResults extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get score => integer()();
  IntColumn get correctAnswers => integer()();
  IntColumn get totalQuestions => integer()();
  DateTimeColumn get playedAt => dateTime()();
}

/// Cada respuesta de una partida.
@DataClassName('TriviaAnswerRow')
@TableIndex(name: 'idx_trivia_answers_result', columns: {#triviaResultId})
class TriviaAnswers extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get triviaResultId =>
      integer().references(TriviaResults, #id, onDelete: KeyAction.cascade)();
  IntColumn get pokemonId => integer().references(Pokemons, #id)();
  BoolColumn get correct => boolean()();
}

/// Logros desbloqueados. Las reglas de cada logro están en el código.
@DataClassName('AchievementRow')
class Achievements extends Table {
  TextColumn get id => text()(); // por ejemplo: first_game, perfect_game
  DateTimeColumn get unlockedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}
