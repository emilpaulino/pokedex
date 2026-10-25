
import 'package:drift/drift.dart';

@DataClassName('PokemonRow')
@TableIndex(name: 'idx_pokemon_name', columns: {#name})
class Pokemons extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  IntColumn get nationalDexNumber => integer()();
  RealColumn get height => real()(); // metros
  RealColumn get weight => real()(); // kilogramos
  TextColumn get artworkUrl => text()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};

  // Evita números nacionales duplicados.
  @override
  List<Set<Column>> get uniqueKeys => [{nationalDexNumber}];
}

@DataClassName('TypeRow')
class Types extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('PokemonTypeRow')
class PokemonTypes extends Table {
  IntColumn get pokemonId =>
      integer().references(Pokemons, #id, onDelete: KeyAction.cascade)();
  IntColumn get typeId => integer().references(Types, #id)();
  IntColumn get slot => integer()();

  @override
  Set<Column> get primaryKey => {pokemonId, typeId};
}

@DataClassName('AbilityRow')
class Abilities extends Table{
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
