// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_user_response;

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

Serializer<GetUserResponse> _$getUserResponseSerializer =
    new _$GetUserResponseSerializer();

class _$GetUserResponseSerializer
    implements StructuredSerializer<GetUserResponse> {
  @override
  final Iterable<Type> types = const [GetUserResponse, _$GetUserResponse];
  @override
  final String wireName = 'GetUserResponse';

  @override
  Iterable serialize(Serializers serializers, GetUserResponse object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(UserEntity)),
    ];

    return result;
  }

  @override
  GetUserResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GetUserResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserEntity)) as UserEntity);
          break;
      }
    }

    return result.build();
  }
}

class _$GetUserResponse extends GetUserResponse {
  @override
  final int error;
  @override
  final String message;
  @override
  final UserEntity data;

  factory _$GetUserResponse([void updates(GetUserResponseBuilder b)]) =>
      (new GetUserResponseBuilder()..update(updates)).build();

  _$GetUserResponse._({this.error, this.message, this.data}) : super._() {
    if (error == null)
      throw new BuiltValueNullFieldError('GetUserResponse', 'error');
    if (message == null)
      throw new BuiltValueNullFieldError('GetUserResponse', 'message');
    if (data == null)
      throw new BuiltValueNullFieldError('GetUserResponse', 'data');
  }

  @override
  GetUserResponse rebuild(void updates(GetUserResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserResponseBuilder toBuilder() =>
      new GetUserResponseBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GetUserResponse) return false;
    return error == other.error &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, error.hashCode), message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetUserResponse')
          ..add('error', error)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetUserResponseBuilder
    implements Builder<GetUserResponse, GetUserResponseBuilder> {
  _$GetUserResponse _$v;

  int _error;
  int get error => _$this._error;
  set error(int error) => _$this._error = error;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  UserEntityBuilder _data;
  UserEntityBuilder get data => _$this._data ??= new UserEntityBuilder();
  set data(UserEntityBuilder data) => _$this._data = data;

  GetUserResponseBuilder();

  GetUserResponseBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _message = _$v.message;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserResponse other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GetUserResponse;
  }

  @override
  void update(void updates(GetUserResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUserResponse build() {
    _$GetUserResponse _$result;
    try {
      _$result = _$v ??
          new _$GetUserResponse._(
              error: error, message: message, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetUserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
