// GENERATED CODE - DO NOT MODIFY BY HAND

part of response;

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

Serializer<Response> _$responseSerializer = new _$ResponseSerializer();

class _$ResponseSerializer implements StructuredSerializer<Response> {
  @override
  final Iterable<Type> types = const [Response, _$Response];
  @override
  final String wireName = 'Response';

  @override
  Iterable serialize(Serializers serializers, Response object,
      {FullType specifiedType: FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[
      'error',
      serializers.serialize(object.error, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data, specifiedType: parameterT),
    ];

    return result;
  }

  @override
  Response deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new ResponseBuilder<Object>()
        : serializers.newBuilder(specifiedType) as ResponseBuilder;

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
          result.data =
              serializers.deserialize(value, specifiedType: parameterT);
          break;
      }
    }

    return result.build();
  }
}

class _$Response<T> extends Response<T> {
  @override
  final int error;
  @override
  final String message;
  @override
  final T data;

  factory _$Response([void updates(ResponseBuilder<T> b)]) =>
      (new ResponseBuilder<T>()..update(updates)).build();

  _$Response._({this.error, this.message, this.data}) : super._() {
    if (error == null) throw new BuiltValueNullFieldError('Response', 'error');
    if (message == null)
      throw new BuiltValueNullFieldError('Response', 'message');
    if (data == null) throw new BuiltValueNullFieldError('Response', 'data');
    if (T == dynamic) throw new BuiltValueMissingGenericsError('Response', 'T');
  }

  @override
  Response<T> rebuild(void updates(ResponseBuilder<T> b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseBuilder<T> toBuilder() => new ResponseBuilder<T>()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Response) return false;
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
    return (newBuiltValueToStringHelper('Response')
          ..add('error', error)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ResponseBuilder<T> implements Builder<Response<T>, ResponseBuilder<T>> {
  _$Response<T> _$v;

  int _error;
  int get error => _$this._error;
  set error(int error) => _$this._error = error;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  T _data;
  T get data => _$this._data;
  set data(T data) => _$this._data = data;

  ResponseBuilder();

  ResponseBuilder<T> get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _message = _$v.message;
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Response<T> other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Response<T>;
  }

  @override
  void update(void updates(ResponseBuilder<T> b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Response<T> build() {
    final _$result =
        _$v ?? new _$Response<T>._(error: error, message: message, data: data);
    replace(_$result);
    return _$result;
  }
}
