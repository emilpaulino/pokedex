import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/pokemon/presentation/providers/catalog_sync_policy_provider.dart';
import 'router.dart';
import 'theme.dart';

class PokedexApp extends ConsumerWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Mantiene activa la política de sincronización mientras la app exista.
    ref.watch(catalogSyncPolicyProvider);

    return MaterialApp.router(
      title: 'Pokédex',
      theme: buildAppTheme(),
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
