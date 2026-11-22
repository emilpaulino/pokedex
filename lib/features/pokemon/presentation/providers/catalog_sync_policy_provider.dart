import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/connectivity/connection_monitor.dart';
import '../../../../core/connectivity/connection_status.dart';
import 'catalog_sync_provider.dart';

/// Cada cuánto se sincroniza el catálogo mientras PokeAPI responde.
const catalogSyncInterval = Duration(minutes: 10);

/// Decide cuándo se sincroniza el catálogo: al abrir la app, al recuperar
/// la conexión y de forma periódica mientras esté en línea y en pantalla.
final catalogSyncPolicyProvider = Provider<void>((ref) {
  Timer? timer;

  void sync(String reason) {
    ref.read(catalogSyncProvider.notifier).refresh();
  }

  // Enciende o apaga el temporizador según la conexión y si la app se ve.
  void updateTimer() {
    final isOnline =
        ref.read(connectionMonitorProvider) == ConnectionStatus.online;
    final lifecycle = WidgetsBinding.instance.lifecycleState;
    final isVisible =
        lifecycle == null || lifecycle == AppLifecycleState.resumed;

    if (isOnline && isVisible) {
      timer ??= Timer.periodic(catalogSyncInterval, (_) => sync('Periódico'));
    } else {
      timer?.cancel();
      timer = null;
    }
  }

  ref.listen<ConnectionStatus>(connectionMonitorProvider, (previous, next) {
    final recovered =
        next == ConnectionStatus.online &&
        (previous == ConnectionStatus.offline ||
            previous == ConnectionStatus.serviceUnavailable);
    if (recovered) sync('Conexión recuperada');
    updateTimer();
  });

  final lifecycleListener = AppLifecycleListener(
    onStateChange: (_) => updateTimer(),
  );

  ref.onDispose(() {
    timer?.cancel();
    lifecycleListener.dispose();
  });

  // Riverpod no deja cambiar otro provider mientras este se está creando.
  Future.microtask(() => sync('Inicio'));
  updateTimer();
});
