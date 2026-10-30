sealed class Failure {
  const Failure(this.message);
  final String message;
}

class NetworkFailure extends Failure {
  const NetworkFailure()
      : super('Sin conexión a Internet. Mostrando los datos guardados.');
}

class ServerFailure extends Failure {
  const ServerFailure()
      : super('El servidor de Pokémon no está disponible. Intenta más tarde.');
}

class CacheFailure extends Failure {
  const CacheFailure()
      : super('No se pudieron leer los datos guardados en el teléfono.');
}