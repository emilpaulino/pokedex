import 'package:drift/drift.dart';
import '../../../../core/database/app_database.dart';
import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../mappers/pokemon_mapper.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final AppDatabase database;

  PokemonRepositoryImpl(this.database);

  @override
  Stream<List<Pokemon>> watchPokemons() {
    final query = database.select(database.pokemons)
      ..orderBy([(p) => OrderingTerm.asc(p.nationalDexNumber)]);

    return query.watch().map((rows) => rows.map(toPokemonEntity).toList());
  }

}
