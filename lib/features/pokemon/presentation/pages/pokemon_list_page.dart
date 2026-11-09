import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/pokemon.dart';
import '../providers/pokemon_list_provider.dart';
import '../widgets/pokemon_card.dart';
import '../../../../app/theme.dart';
import '../providers/catalog_sync_provider.dart';
import '../../../../app/widgets/connection_indicator.dart';

class PokemonListPage extends ConsumerWidget {
  const PokemonListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemons = ref.watch(pokemonListProvider);
    final sync = ref.watch(catalogSyncProvider);

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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: ConnectionIndicator(),
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
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
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
                data: (list) {
                  // Si hay Pokémon guardados: se muestra la lista.
                  if (list.isNotEmpty) return _PokemonList(pokemons: list);

                  // Si No hay Pokémon y se están descargando.
                  if (sync.isSyncing) {
                    return const _LoadingState(
                      message: 'Descargando la Pokédex…',
                    );
                  }

                  // Si no hay Pokémon error o vacío.
                  return _MessageState(
                    icon: sync.failure == null
                        ? Icons.catching_pokemon
                        : Icons.cloud_off,
                    message:
                        sync.failure?.message ??
                        'Aún no hay Pokémon guardados. '
                            'Conéctate a Internet y toca Reintentar.',
                    onRetry: () =>
                        ref.read(catalogSyncProvider.notifier).refresh(),
                  );
                },
                loading: () => const _LoadingState(message: 'Cargando…'),
                error: (error, stackTrace) => _MessageState(
                  icon: Icons.error_outline,
                  message: 'No se pudieron leer los Pokémon guardados.',
                  onRetry: () => ref.invalidate(pokemonListProvider),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PokemonList extends StatelessWidget {
  const _PokemonList({required this.pokemons});

  final List<Pokemon> pokemons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: pokemons.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        final pokemon = pokemons[index];
        return PokemonCard(
          pokemon: pokemon,
          color:
              pokemonTypeColors[pokemon.primaryType?.name] ?? cardFallbackColor,
        );
      },
    );
  }
}

class _LoadingState extends StatelessWidget {
  const _LoadingState({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text(message, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class _MessageState extends StatelessWidget {
  const _MessageState({
    required this.icon,
    required this.message,
    required this.onRetry,
  });

  final IconData icon;
  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 64, color: Colors.grey),
            const SizedBox(height: 12),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Reintentar'),
            ),
          ],
        ),
      ),
    );
  }
}
