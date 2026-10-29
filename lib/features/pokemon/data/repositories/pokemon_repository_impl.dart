import 'package:drift/drift.dart';

import '../../../../core/database/app_database.dart';
import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final AppDatabase database;

  PokemonRepositoryImpl(this.database);

  @override
  Stream<List<Pokemon>> watchPokemons() {
    final query = database.select(database.pokemons)
      ..orderBy([(p) => OrderingTerm.asc(p.nationalDexNumber)]);

    return query.watch().map((rows) => rows.map(_toEntity).toList());
  }

  Pokemon _toEntity(PokemonRow row) {
    return Pokemon(
      id: row.id,
      name: row.name,
      nationalDexNumber: row.nationalDexNumber,
      height: row.height,
      weight: row.weight,
      artworkUrl: row.artworkUrl,
    );
  }
}
