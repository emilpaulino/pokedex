import 'package:graphql/client.dart';

/// Consulta mínima para saber si PokeAPI responde
const _healthQuery = r'''
query HealthCheck {
  pokemon(limit: 1) {
    id
  }
}
''';

/// Devuelve true si PokeAPI responde en menos de 5 segundos.
Future<bool> isPokeApiReachable(GraphQLClient client) async {
  try {
    final result = await client
        .query(QueryOptions(document: gql(_healthQuery)))
        .timeout(const Duration(seconds: 5));
    return !result.hasException;
  } catch (_) {
    return false;
  }
}