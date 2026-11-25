import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'tables.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    // Catálogo
    PokemonSpecies,
    Pokemons,
    Types,
    PokemonTypes,
    Abilities,
    PokemonAbilities,
    // Detalle
    Evolutions,
    EggGroups,
    SpeciesEggGroups,
    VersionGroups,
    Moves,
    PokemonMoves,
    PokemonGames,
    TypeEfficacies,
    // Datos del usuario
    Favorites,
    AppSettings,
    TriviaResults,
    TriviaAnswers,
    Achievements,
    // Sincronización
    SyncMetadata,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      beforeOpen: (OpeningDetails details) async {
        await customStatement('PRAGMA foreign_keys = ON');
      },
    );
  }
}

QueryExecutor _openConnection() {
  return driftDatabase(name: 'pokedex_database');
}
