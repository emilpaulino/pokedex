import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/pokemon.dart';
import '../providers/pokemon_list_provider.dart';
import '../widgets/pokemon_card.dart';

class PokemonListPage extends ConsumerWidget {
  const PokemonListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemons = ref.watch(pokemonListProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F9FC),
        elevation: 0,
        scrolledUnderElevation: 0,
        titleSpacing: 20,
        title: const Text(
          'Pokédex',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.catching_pokemon),
              tooltip: 'Pokédex',
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Barra de búsqueda
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar Pokémon',
                prefixIcon: const Icon(Icons.search),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                filled: true,
                fillColor: const Color(0xFFEDEEF2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: pokemons.when(
                data: (list) => list.isEmpty
                    ? const _EmptyState()
                    : _PokemonGrid(pokemons: list),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error, stackTrace) => Center(
                  child: Text('Error al cargar los Pokémon: $error'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PokemonGrid extends StatelessWidget {
  final List<Pokemon> pokemons;

  const _PokemonGrid({required this.pokemons});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pokemons.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.85,
      ),
      itemBuilder: (context, index) {
        return PokemonCard(
          pokemon: pokemons[index],
          // Color provisional hasta tener los tipos en el dominio.
          color: Theme.of(context).colorScheme.primary,
        );
      },
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.catching_pokemon, size: 64, color: Colors.grey),
          SizedBox(height: 12),
          Text(
            'Aún no hay Pokémon guardados',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
