library get_user_response;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gifun/data/entities/user_entity.dart';

part 'get_user_response.g.dart';

abstract class GetUserResponse
    implements Built<GetUserResponse, GetUserResponseBuilder> {
  int get error;
  String get message;
  UserEntity get data;

  GetUserResponse._();
  factory GetUserResponse([updates(GetUserResponseBuilder b)]) =
      _$GetUserResponse;
  static Serializer<GetUserResponse> get serializer =>
      _$getUserResponseSerializer;
}
