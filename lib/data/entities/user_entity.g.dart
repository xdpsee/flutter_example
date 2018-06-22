// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => new UserEntity(
    userId: json['id'] as num,
    nickName: json['nick_name'] as String,
    avatarImage: json['avatar_image'] as String,
    coverImage: json['cover_image'] as String);

abstract class _$UserEntitySerializerMixin {
  num get userId;
  String get nickName;
  String get avatarImage;
  String get coverImage;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': userId,
        'nick_name': nickName,
        'avatar_image': avatarImage,
        'cover_image': coverImage
      };
}
