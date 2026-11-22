import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

import 'api_outage_simulation.dart';

const pokeApiUrl = 'https://graphql.pokeapi.co/v1beta2';

final graphQLClientProvider = Provider<GraphQLClient>((ref) {
  return GraphQLClient(
    // Cada consulta revisa el interruptor: si la simulación está activa,
    // va a la dirección que falla; si no, a PokeAPI.
    link: Link.split(
      (_) => ref.read(apiOutageSimulationProvider),
      HttpLink(simulatedOutageUrl),
      HttpLink(pokeApiUrl),
    ),
    cache: GraphQLCache(),
    queryRequestTimeout: null,
    defaultPolicies: DefaultPolicies(
      query: Policies(fetch: FetchPolicy.noCache),
    ),
  );
});
