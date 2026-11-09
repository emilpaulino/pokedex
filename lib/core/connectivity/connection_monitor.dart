import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../network/graphql_client_provider.dart';
import 'api_health_check.dart';
import 'connection_status.dart';

class ConnectionMonitor extends Notifier<ConnectionStatus> {
  final _connectivity = Connectivity();
  StreamSubscription<List<ConnectivityResult>>? _subscription;
  Timer? _waitTimer;
  Timer? _retryTimer;

  @override
  ConnectionStatus build() {
    // Cuando cambie la red, volver a comprobar.
    _subscription = _connectivity.onConnectivityChanged.listen(
      (_) => _checkAfterWaiting(),
    );

    // Mientras no esté en línea, vuelve a comprobar cada 30s.
    _retryTimer = Timer.periodic(const Duration(seconds: 30), (_) {
      if (state != ConnectionStatus.online) checkNow();
    });

    // Al cerrar, dejar de escuchar.
    ref.onDispose(() {
      _subscription?.cancel();
      _waitTimer?.cancel();
      _retryTimer?.cancel();
    });

    // Primera comprobación al abrir la app.
    Future.microtask(checkNow);
    return ConnectionStatus.checking;
  }

  void _checkAfterWaiting() {
    _waitTimer?.cancel();
    _waitTimer = Timer(const Duration(milliseconds: 1500), checkNow);
  }

  Future<void> checkNow() async {
    final status = await checkPokeApi(ref.read(graphQLClientProvider));
    _update(status);
  }

  void _update(ConnectionStatus status) {
    if (state != status) {
      debugPrint('[Conexión] ${state.name} → ${status.name}');
      state = status;
    }
  }
}

final connectionMonitorProvider =
    NotifierProvider<ConnectionMonitor, ConnectionStatus>(
      ConnectionMonitor.new,
    );
