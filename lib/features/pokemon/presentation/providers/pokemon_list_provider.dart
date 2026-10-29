import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/database_provider.dart';
import '../../data/repositories/pokemon_repository_impl.dart';
import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';

final pokemonRepositoryProvider = Provider<PokemonRepository>((ref) {
  return PokemonRepositoryImpl(ref.watch(appDatabaseProvider));
});

// La lista observa la base de datos local; se actualiza sola cuando cambia.
final pokemonListProvider = StreamProvider<List<Pokemon>>((ref) {
  return ref.watch(pokemonRepositoryProvider).watchPokemons();
});
