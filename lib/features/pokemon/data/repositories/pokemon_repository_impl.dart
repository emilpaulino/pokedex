import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokemon_local_data_source.dart';
import '../mappers/pokemon_mapper.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  PokemonRepositoryImpl(this._local);

  final PokemonLocalDataSource _local;

  @override
  Stream<List<Pokemon>> watchPokemons() {
    return _local
        .watchPokemons()
        .map((rows) => rows.map(toPokemonEntity).toList());
  }
}