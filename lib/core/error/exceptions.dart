class NetworkException implements Exception {
  const NetworkException([this.message]);
  final String? message;
}

class RequestTimeoutException implements Exception {
  const RequestTimeoutException([this.message]);
  final String? message;
}

class RateLimitException implements Exception {
  const RateLimitException([this.message]);
  final String? message;
}

class ServerException implements Exception {
  const ServerException([this.message]);
  final String? message;
}

class CacheException implements Exception {
  const CacheException([this.message]);
  final String? message;
}
