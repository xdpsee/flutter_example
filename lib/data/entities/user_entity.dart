import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity extends Object with _$UserEntitySerializerMixin {
  @JsonKey(name: 'id')
  final num userId;

  @JsonKey(name: 'nick_name')
  final String nickName;

  @JsonKey(name: 'avatar_image')
  final String avatarImage;

  @JsonKey(name: 'cover_image')
  final String coverImage;

  UserEntity({this.userId, this.nickName, this.avatarImage, this.coverImage});

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
}
