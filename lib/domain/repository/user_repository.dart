import 'dart:async';
import 'package:gifun/domain/model/user.dart';

abstract class UserRepository {
    Future<User> getUser(num userId);
}

