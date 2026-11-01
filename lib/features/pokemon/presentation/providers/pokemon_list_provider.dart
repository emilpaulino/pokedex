import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/pokemon_local_data_source.dart';
import '../../data/repositories/pokemon_repository_impl.dart';
import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';

final pokemonRepositoryProvider = Provider<PokemonRepository>((ref) {
  return PokemonRepositoryImpl(ref.watch(pokemonLocalDataSourceProvider));
});

final pokemonListProvider = StreamProvider<List<Pokemon>>((ref) {
  return ref.watch(pokemonRepositoryProvider).watchPokemons();
});