sealed class Failure {
  const Failure(this.message);
  final String message;
}

class NetworkFailure extends Failure {
  const NetworkFailure()
    : super(
        'Sin conexión a Internet. Revisa tu conexión e inténtalo de nuevo.',
      );
}

class TimeoutFailure extends Failure {
  const TimeoutFailure()
    : super('El servidor tardó demasiado en responder. Intenta de nuevo.');
}

class RateLimitFailure extends Failure {
  const RateLimitFailure()
    : super('Se hicieron demasiadas consultas. Espera un momento.');
}

class ServerFailure extends Failure {
  const ServerFailure()
    : super('El servidor de Pokémon no está disponible. Intenta más tarde.');
}

class CacheFailure extends Failure {
  const CacheFailure()
    : super('No se pudieron leer los datos guardados en el teléfono.');
}
