import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pokedex/app/app.dart';
import 'package:pokedex/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokedex/features/pokemon/presentation/providers/pokemon_list_provider.dart';

void main() {
  testWidgets('La app abre en la Pokédex vacía', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          pokemonListProvider.overrideWith(
                (ref) => Stream.value(const <Pokemon>[]),
          ),
        ],
        child: const PokedexApp(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Pokédex'), findsOneWidget);
    expect(find.text('Aún no hay Pokémon guardados'), findsOneWidget);
  });
}