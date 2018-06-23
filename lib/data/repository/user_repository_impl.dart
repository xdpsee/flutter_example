import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:built_value/serializer.dart';
import 'package:gifun/domain/model/user.dart';
import 'package:gifun/domain/repository/user_repository.dart';
import 'package:gifun/data/exception/service_exception.dart';
import 'package:gifun/data/exception/unknown_exception.dart';
import 'package:gifun/data/datasource/response/response.dart';
import 'package:gifun/data/entities/user_entity.dart';
import 'package:gifun/data/converter/user_entity_to_user.dart';
import 'package:gifun/data/exception/user_not_found.dart';
import 'package:gifun/data/serializer/serializers.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<User> getUser(num userId) async {
    String url =
        'https://easy-mock.com/mock/5b2c6900a46a453e3ea66330/gifun/user/$userId';
    try {
      http.Response response = await http.get(url);
      if (200 == response.statusCode) {
        Map<String, dynamic> jsonObj = json.decode(response.body);
        Response<UserEntity> result = parse(jsonObj);
        if (0 == result.error) {
          return Future.value(UserEntity2User(result.data));
        } else if (-1 == result.error) {
          return Future.error(new UserNotFoundException());
        }
      }
    } on Exception catch (e) {
      print(e);
      return Future.error(new ServiceException('服务不可用'));
    }
    
    return Future.error(new UnknownException());
  }

  Response<UserEntity> parse(Map<String, dynamic> json) {
    const FullType type =
        const FullType(Response, const [const FullType(UserEntity)]);
    final serializersWithBuilder = (serializers.toBuilder()
          ..addBuilderFactory(type, () => new ResponseBuilder<UserEntity>()))
        .build();
    Response<UserEntity> result =
        serializersWithBuilder.deserialize(json, specifiedType: type);
    return result;
  }
}
