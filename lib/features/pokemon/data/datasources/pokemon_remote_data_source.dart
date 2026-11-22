import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
// Oculta los errores de graphql para usar los nuestros
import 'package:graphql/client.dart' hide NetworkException, ServerException;

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/graphql_client_provider.dart';
import '../dtos/pokemon_dto.dart';
import 'pokemon_queries.dart';

const requestTimeout = Duration(seconds: 30);
final _pageDocument = gql(fetchPokemonPageQuery);

abstract class PokemonRemoteDataSource {
  Future<List<PokemonDto>> fetchPokemonPage({
    required int limit,
    required int offset,
  });
}

class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  PokemonRemoteDataSourceImpl(this._client);

  final GraphQLClient _client;

  @override
  Future<List<PokemonDto>> fetchPokemonPage({
    required int limit,
    required int offset,
  }) async {
    final QueryResult result;

    try {
      result = await _client
          .query(
            QueryOptions(
              document: _pageDocument,
              variables: {'limit': limit, 'offset': offset},
            ),
          )
          .timeout(requestTimeout);
    } on TimeoutException {
      throw const RequestTimeoutException();
    }

    if (result.hasException) {
      final error = result.exception!;
      final linkError = error.linkException;

      if (linkError is HttpLinkServerException) {
        if (linkError.response.statusCode == 429) {
          throw const RateLimitException();
        }
        throw ServerException('HTTP ${linkError.response.statusCode}');
      }

      if (linkError != null) {
        throw NetworkException(linkError.toString());
      }

      throw ServerException(error.graphqlErrors.toString());
    }

    final list = result.data?['pokemon'] as List<dynamic>?;
    if (list == null) {
      throw const ServerException('La respuesta no trajo Pokémon');
    }

    return list
        .map((e) => PokemonDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}

final pokemonRemoteDataSourceProvider = Provider<PokemonRemoteDataSource>((
  ref,
) {
  return PokemonRemoteDataSourceImpl(ref.watch(graphQLClientProvider));
});
