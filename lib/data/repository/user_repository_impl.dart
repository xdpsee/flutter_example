import 'dart:async';
import 'dart:convert';
import 'package:gifun/domain/model/user.dart';
import 'package:gifun/domain/repository/user_repository.dart';
import 'package:gifun/data/constants.dart';
import 'package:gifun/data/entities/user_entity.dart';
import 'package:gifun/data/converter/user_entity_to_user.dart';
import 'package:gifun/data/exception/service_exception.dart';
import 'package:gifun/data/exception/user_not_found.dart';
import 'package:gifun/data/entities/result.dart';
import 'package:http/http.dart' as http;

class UserRepositoryImpl implements UserRepository {
  @override
  Future<User> getUser(num userId) async {
    String url = GetUserUrl(userId);
    try {
      http.Response response = await http.get(url);
      if (200 == response.statusCode) {
        Result result = Result.fromJson(json.decode(response.body));
        if (0 == result.error) {
          UserEntity user = UserEntity.fromJson(result.data);
          return Future.value(UserEntity2User(user));
        }

        if (-1 == result.error) {
            return Future.error(new UserNotFoundException());
        }
      }
    } on Exception catch (e) {
      print(e);
    }

    return Future.error(new ServiceException('服务不可用'));
  }
}
