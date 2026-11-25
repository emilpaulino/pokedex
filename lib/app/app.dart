import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/pokemon/presentation/pages/pokemon_list_page.dart';
import '../features/pokemon/presentation/providers/catalog_sync_policy_provider.dart';
import 'theme.dart';

class PokedexApp extends ConsumerWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Mantiene activa la política de sincronización mientras la app exista.
    ref.watch(catalogSyncPolicyProvider);

    return MaterialApp(
      title: 'Pokédex',
      theme: buildAppTheme(),
      home: const PokemonListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}