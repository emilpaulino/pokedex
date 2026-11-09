import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/pokemon/presentation/providers/catalog_sync_provider.dart';
import '../core/connectivity/connection_monitor.dart';
import '../core/connectivity/connection_status.dart';
import 'router.dart';
import 'theme.dart';

class PokedexApp extends ConsumerStatefulWidget {
  const PokedexApp({super.key});

  @override
  ConsumerState<PokedexApp> createState() => _PokedexAppState();
}

class _PokedexAppState extends ConsumerState<PokedexApp> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(catalogSyncProvider.notifier).refresh());
  }

  @override
  Widget build(BuildContext context) {
    // Al recuperar la conexión, sincroniza sola.
    ref.listen<ConnectionStatus>(connectionMonitorProvider, (previous, next) {
      final recovered =
          next == ConnectionStatus.online &&
          (previous == ConnectionStatus.offline ||
              previous == ConnectionStatus.serviceUnavailable);
      if (recovered) {
        ref.read(catalogSyncProvider.notifier).refresh();
      }
    });
    return MaterialApp.router(
      title: 'Pokédex',
      theme: buildAppTheme(),
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
