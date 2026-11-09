import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';
import '../network/graphql_client_provider.dart';
import 'api_health_check.dart';
import 'connection_status.dart';

/// Vigila la red y comprueba si PokeAPI responde.
class ConnectionMonitor extends Notifier<ConnectionStatus> {
  final _connectivity = Connectivity();
  StreamSubscription<List<ConnectivityResult>>? _subscription;
  Timer? _waitTimer;
  Timer? _retryTimer;

  @override
  ConnectionStatus build() {
    // Avisar cada vez que cambie la red (Wi-Fi, datos, sin red).
    _subscription = _connectivity.onConnectivityChanged.listen(
          (_) => _checkAfterWaiting(),
    );

    // Mientras no esté en línea, volver a comprobar cada 30 s.
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

  /// Espera 1.5s antes de comprobar, por si la red parpadea
  void _checkAfterWaiting() {
    _waitTimer?.cancel();
    _waitTimer = Timer(const Duration(milliseconds: 1500), checkNow);
  }

  /// Primero le pregunta a PokeAPI, si no responde, revisa la red para saber
  /// por qué.
  Future<void> checkNow() async {
    final apiResponds = await isPokeApiReachable(
      ref.read(graphQLClientProvider),
    );
    if (apiResponds) {
      _update(ConnectionStatus.online);
      return;
    }

    // PokeAPI no respondió: ¿es porque no hay red o porque falla el servicio?
    final results = await _connectivity.checkConnectivity();
    final hasNetwork = results.any((r) => r != ConnectivityResult.none);
    _update(
      hasNetwork ? ConnectionStatus.serviceUnavailable : ConnectionStatus.offline,
    );
  }

  /// Solo cambia el estado si es distinto
  void _update(ConnectionStatus status) {
    if (state != status) {
      state = status;
    }
  }
}

final connectionMonitorProvider =
NotifierProvider<ConnectionMonitor, ConnectionStatus>(
  ConnectionMonitor.new,
);