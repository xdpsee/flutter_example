
class UnknownException implements Exception {
    final String message;
    const UnknownException([this.message = '']);

    String toString() => 'UnknownException: $message';
}
