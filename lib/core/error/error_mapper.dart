import 'exceptions.dart';
import 'failures.dart';

Failure toFailure(Object error) {
  return switch (error) {
    NetworkException() => const NetworkFailure(),
    RequestTimeoutException() => const TimeoutFailure(),
    RateLimitException() => const RateLimitFailure(),
    CacheException() => const CacheFailure(),
    _ => const ServerFailure(),
  };
}
