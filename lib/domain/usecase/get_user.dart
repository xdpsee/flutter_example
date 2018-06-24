import 'dart:async';

import 'package:gifun/domain/interactor/use_case.dart';
import 'package:gifun/domain/model/user.dart';
import 'package:gifun/domain/repository/user_repository.dart';

class UserId implements Params {
  final num value;
  UserId(this.value);
  factory UserId.of(num userId) {
    return new UserId(userId);
  }
}

class UserUseCase extends UseCase<UserId, User> {
  final UserRepository userRepository;

  UserUseCase(this.userRepository);

  @override
  Future<User> execute(UserId params) {
    
    return userRepository.getUser(params.value);

  }
}

