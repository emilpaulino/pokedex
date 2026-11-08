import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/pokemon.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key, required this.pokemon, required this.color});

  final Pokemon pokemon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final number = '#${pokemon.nationalDexNumber.toString().padLeft(3, '0')}';

    return Semantics(
      label: '${pokemon.displayName}, número $number',
      child: Container(
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                number,
                style: textTheme.labelLarge?.copyWith(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Expanded(
              child: Center(
                child: CachedNetworkImage(
                  imageUrl: pokemon.artworkUrl,
                  fit: BoxFit.contain,
                  placeholder: (context, url) => const SizedBox.square(
                    dimension: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.catching_pokemon,
                    size: 56,
                    color: Colors.black26,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            Text(
              pokemon.displayName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}