
class UserNotFoundException implements Exception {
    final String message;
    const UserNotFoundException([this.message = '']);

    String toString() => 'UserNotFoundException: $message';
}