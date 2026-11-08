import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pokedex/app/app.dart';
import 'package:pokedex/core/error/failures.dart';
import 'package:pokedex/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokedex/features/pokemon/domain/repositories/pokemon_repository.dart';
import 'package:pokedex/features/pokemon/presentation/providers/pokemon_list_provider.dart';

/// Repositorio falso: no usa Internet ni la base de datos.
class FakePokemonRepository implements PokemonRepository {
  @override
  Stream<List<Pokemon>> watchPokemons() => Stream.value(const []);

  @override
  Future<Failure?> refresh() async => null;
}

void main() {
  testWidgets('La app abre en la Pokédex vacía', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          pokemonRepositoryProvider.overrideWithValue(FakePokemonRepository()),
        ],
        child: const PokedexApp(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Pokédex'), findsOneWidget);
    expect(find.text('Aún no hay Pokémon guardados'), findsOneWidget);
  });
}