
class ServiceException implements Exception {
    final String message;
    const ServiceException([this.message = '']);

    String toString() => 'ServiceException: $message';
}
