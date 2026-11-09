import 'pokemon_type.dart';

class Pokemon {
  final int id;
  final String name; // nombre interno de la API ("mr-mime")
  final String displayName; // nombre oficial ("Mr. Mime")
  final int nationalDexNumber;
  final double height; // metros
  final double weight; // kilogramos
  final String artworkUrl;
  final List<PokemonType> types;

  const Pokemon({
    required this.id,
    required this.name,
    required this.displayName,
    required this.nationalDexNumber,
    required this.height,
    required this.weight,
    required this.artworkUrl,
    required this.types,
  });

  PokemonType? get primaryType => types.isEmpty ? null : types.first;
}
