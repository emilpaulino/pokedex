import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Dirección del mismo servidor que responde 404 con una página HTML,
/// como en una caída real de PokeAPI (PA-08).
const simulatedOutageUrl = 'https://graphql.pokeapi.co/simulacion-api-caida';

/// Interruptor de depuración que simula que PokeAPI no responde.
class ApiOutageSimulation extends Notifier<bool> {
  @override
  bool build() => false;

  void toggle() => state = !state;
}

final apiOutageSimulationProvider = NotifierProvider<ApiOutageSimulation, bool>(
  ApiOutageSimulation.new,
);
