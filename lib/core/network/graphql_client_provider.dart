import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

const pokeApiUrl = 'https://graphql.pokeapi.co/v1beta2';

final graphQLClientProvider = Provider<GraphQLClient>((ref) {
  return GraphQLClient(
    link: HttpLink(pokeApiUrl),
    cache: GraphQLCache(),
    defaultPolicies: DefaultPolicies(
      query: Policies(fetch: FetchPolicy.networkOnly),
    ),
  );
});