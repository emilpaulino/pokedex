import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/cache/pokemon_image_cache.dart';
import '../../../../app/theme.dart';
import '../../domain/entities/pokemon.dart';

const _imageSize = 96.0;

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key, required this.pokemon, required this.color});

  final Pokemon pokemon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final number = '#${pokemon.nationalDexNumber.toString().padLeft(3, '0')}';
    final typeNames = pokemon.types.map((t) => _capitalize(t.name)).join(', ');

    return Semantics(
      label: '${pokemon.displayName}, número $number, tipo $typeNames',
      child: Container(
        constraints: const BoxConstraints(minHeight: 110),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            // Datos del pokemon
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number,
                    style: textTheme.labelMedium?.copyWith(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    pokemon.displayName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: [
                      for (final type in pokemon.types)
                        _TypeChip(name: type.name),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),

            // Sprite del pokemon
            SizedBox.square(
              dimension: _imageSize,
              child: CachedNetworkImage(
                imageUrl: pokemon.artworkUrl,
                cacheManager: pokemonImageCache,
                memCacheWidth:
                    (_imageSize * MediaQuery.devicePixelRatioOf(context))
                        .round(),
                fit: BoxFit.contain,
                placeholder: (context, url) => const Center(
                  child: SizedBox.square(
                    dimension: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(
                  Icons.catching_pokemon,
                  size: 48,
                  color: Colors.black26,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Tipos
class _TypeChip extends StatelessWidget {
  const _TypeChip({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    final color = pokemonTypeColors[name] ?? cardFallbackColor;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 4),
          Text(
            _capitalize(name),
            style: Theme.of(context).textTheme.labelMedium
                ?.copyWith(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}

/// Función para capitalizar la primera letra de un texto
String _capitalize(String text) =>
    text.isEmpty ? text : text[0].toUpperCase() + text.substring(1);
