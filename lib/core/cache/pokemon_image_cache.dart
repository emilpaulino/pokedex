import 'package:flutter_cache_manager/flutter_cache_manager.dart';

final pokemonImageCache = CacheManager(
  Config(
    'pokemonImages',
    maxNrOfCacheObjects: 1500,
    stalePeriod: const Duration(days: 365),
  ),
);
