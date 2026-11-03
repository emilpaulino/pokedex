import '../../../../core/error/failures.dart';
import '../entities/pokemon.dart';

abstract class PokemonRepository {
  Stream<List<Pokemon>> watchPokemons();
  Future<Failure?> refresh();
}
