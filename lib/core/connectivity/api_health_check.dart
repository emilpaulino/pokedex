import 'dart:async';

import 'package:graphql/client.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'connection_status.dart';

/// Consulta mínima para saber si PokeAPI responde
const _healthQuery = r'''
query HealthCheck {
  pokemon(limit: 1) {
    id
  }
}
''';

/// Le pregunta a PokeAPI si responde y, si no, usa el tipo de error
/// para saber si falta Internet o si falla el servicio.
Future<ConnectionStatus> checkPokeApi(GraphQLClient client) async {
  try {
    final result = await client
        .query(QueryOptions(document: gql(_healthQuery)))
        .timeout(const Duration(seconds: 5));

    if (!result.hasException) return ConnectionStatus.online;

    final linkError = result.exception!.linkException;

    // El servidor respondió, pero con un error HTTP
    if (linkError is HttpLinkServerException) {
      return ConnectionStatus.serviceUnavailable;
    }

    // No se pudo llegar al servidor, no hay Internet.
    if (linkError != null) return ConnectionStatus.offline;

    // GraphQL respondió con errores, hay Internet, pero el servicio falla.
    return ConnectionStatus.serviceUnavailable;
  } on TimeoutException {
    final results = await Connectivity().checkConnectivity();
    final hasNetwork = results.any((r) => r != ConnectivityResult.none);
    return hasNetwork
        ? ConnectionStatus.serviceUnavailable
        : ConnectionStatus.offline;
  } catch (_) {
    return ConnectionStatus.offline;
  }
}
