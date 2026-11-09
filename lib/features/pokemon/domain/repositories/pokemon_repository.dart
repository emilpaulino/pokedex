import '../../../../core/error/failures.dart';
import '../entities/pokemon.dart';

abstract class PokemonRepository {
  /// Lista de Pokémon guardados.
  Stream<List<Pokemon>> watchPokemons();

  /// Hora de la última sincronización exitosa.
  Stream<DateTime?> watchLastSync();

  /// Pide datos nuevos a la API y los guarda.
  Future<Failure?> refresh({bool force = false});
}
