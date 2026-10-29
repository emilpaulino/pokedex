import '../entities/pokemon.dart';

abstract class PokemonRepository {
  Stream<List<Pokemon>> watchPokemons();
}
