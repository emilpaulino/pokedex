import 'dart:async';

const syncMaxRetries = 3;
const syncFirstRetryWait = Duration(seconds: 2);

Future<T> retryWithBackoff<T>(
  Future<T> Function() operation, {
  required bool Function(Object error) shouldRetry,
  void Function(int retry, Duration wait, Object error)? onRetry,
}) async {
  var retry = 0;
  var wait = syncFirstRetryWait;

  while (true) {
    try {
      return await operation();
    } catch (error) {
      if (!shouldRetry(error) || retry >= syncMaxRetries) rethrow;
      retry++;
      onRetry?.call(retry, wait, error);
      await Future.delayed(wait);
      wait *= 2;
    }
  }
}
