// GENERATED CODE - DO NOT MODIFY BY HAND

part of ueser_entity;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

class _$UserEntity extends UserEntity {
  @override
  final num userId;
  @override
  final String nickName;
  @override
  final String avatarImage;
  @override
  final String coverImage;

  factory _$UserEntity([void updates(UserEntityBuilder b)]) =>
      (new UserEntityBuilder()..update(updates)).build();

  _$UserEntity._(
      {this.userId, this.nickName, this.avatarImage, this.coverImage})
      : super._() {
    if (userId == null)
      throw new BuiltValueNullFieldError('UserEntity', 'userId');
    if (nickName == null)
      throw new BuiltValueNullFieldError('UserEntity', 'nickName');
    if (avatarImage == null)
      throw new BuiltValueNullFieldError('UserEntity', 'avatarImage');
    if (coverImage == null)
      throw new BuiltValueNullFieldError('UserEntity', 'coverImage');
  }

  @override
  UserEntity rebuild(void updates(UserEntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserEntityBuilder toBuilder() => new UserEntityBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! UserEntity) return false;
    return userId == other.userId &&
        nickName == other.nickName &&
        avatarImage == other.avatarImage &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userId.hashCode), nickName.hashCode),
            avatarImage.hashCode),
        coverImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserEntity')
          ..add('userId', userId)
          ..add('nickName', nickName)
          ..add('avatarImage', avatarImage)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class UserEntityBuilder implements Builder<UserEntity, UserEntityBuilder> {
  _$UserEntity _$v;

  num _userId;
  num get userId => _$this._userId;
  set userId(num userId) => _$this._userId = userId;

  String _nickName;
  String get nickName => _$this._nickName;
  set nickName(String nickName) => _$this._nickName = nickName;

  String _avatarImage;
  String get avatarImage => _$this._avatarImage;
  set avatarImage(String avatarImage) => _$this._avatarImage = avatarImage;

  String _coverImage;
  String get coverImage => _$this._coverImage;
  set coverImage(String coverImage) => _$this._coverImage = coverImage;

  UserEntityBuilder();

  UserEntityBuilder get _$this {
    if (_$v != null) {
      _userId = _$v.userId;
      _nickName = _$v.nickName;
      _avatarImage = _$v.avatarImage;
      _coverImage = _$v.coverImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserEntity other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$UserEntity;
  }

  @override
  void update(void updates(UserEntityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserEntity build() {
    final _$result = _$v ??
        new _$UserEntity._(
            userId: userId,
            nickName: nickName,
            avatarImage: avatarImage,
            coverImage: coverImage);
    replace(_$result);
    return _$result;
  }
}
