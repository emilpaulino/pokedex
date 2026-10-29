import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/pokemon.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  final Color color;

  const PokemonCard({
    super.key,
    required this.pokemon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '#${pokemon.nationalDexNumber.toString().padLeft(3, '0')}',
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Center(
              // Guarda la imagen en caché para verla sin conexión.
              child: CachedNetworkImage(
                imageUrl: pokemon.artworkUrl,
                fit: BoxFit.contain,
                placeholder: (context, url) => const SizedBox.square(
                  dimension: 24,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
                errorWidget: (context, url, error) => const Icon(
                  Icons.catching_pokemon,
                  size: 60,
                ),
              ),
            ),
          ),
          Text(
            pokemon.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
