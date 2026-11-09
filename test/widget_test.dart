import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pokedex/app/app.dart';
import 'package:pokedex/core/error/failures.dart';
import 'package:pokedex/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokedex/features/pokemon/domain/repositories/pokemon_repository.dart';
import 'package:pokedex/features/pokemon/presentation/providers/pokemon_list_provider.dart';
import 'package:pokedex/core/connectivity/connection_monitor.dart';
import 'package:pokedex/core/connectivity/connection_status.dart';

/// Repositorio falso: no usa Internet ni la base de datos.
class FakePokemonRepository implements PokemonRepository {
  @override
  Stream<List<Pokemon>> watchPokemons() => Stream.value(const []);

  @override
  Future<Failure?> refresh() async => null;

  @override
  Stream<DateTime?> watchLastSync() => Stream.value(null);
}

/// Monitor falso: siempre "en línea", sin consultar la red.
class FakeConnectionMonitor extends ConnectionMonitor {
  @override
  ConnectionStatus build() => ConnectionStatus.online;
}

void main() {
  testWidgets('La app abre en la Pokédex vacía', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          pokemonRepositoryProvider.overrideWithValue(FakePokemonRepository()),
          connectionMonitorProvider.overrideWith(FakeConnectionMonitor.new),
        ],
        child: const PokedexApp(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Pokédex'), findsOneWidget);
    expect(find.textContaining('Aún no hay Pokémon guardados'), findsOneWidget);
    expect(find.text('Reintentar'), findsOneWidget);
  });
}
