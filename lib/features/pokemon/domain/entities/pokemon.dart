class Pokemon {
  final int id;
  final String name;
  final int nationalDexNumber;
  final double height; // metros
  final double weight; // kilogramos
  final String artworkUrl;

  const Pokemon({
    required this.id,
    required this.name,
    required this.nationalDexNumber,
    required this.height,
    required this.weight,
    required this.artworkUrl,
  });
}
