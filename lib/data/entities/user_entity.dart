library ueser_entity;
import 'package:built_value/built_value.dart';

part 'user_entity.g.dart';

abstract class UserEntity implements Built<UserEntity, UserEntityBuilder> {
  num get userId;

  String get nickName;

  String get avatarImage;

  String get coverImage;

  UserEntity._();
  factory UserEntity([updates(UserEntityBuilder b)]) = _$UserEntity;
}
