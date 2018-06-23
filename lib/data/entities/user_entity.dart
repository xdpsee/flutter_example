library ueser_entity;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_entity.g.dart';

abstract class UserEntity implements Built<UserEntity, UserEntityBuilder> {
  @BuiltValueField(wireName: 'id')
  num get userId;

  @BuiltValueField(wireName: 'nick_name')
  String get nickName;

  @BuiltValueField(wireName: 'avatar_image')
  String get avatarImage;

  @BuiltValueField(wireName: 'cover_image')
  String get coverImage;

  UserEntity._();
  factory UserEntity([updates(UserEntityBuilder b)]) = _$UserEntity;
  static Serializer<UserEntity> get serializer =>
      _$userEntitySerializer;
}
