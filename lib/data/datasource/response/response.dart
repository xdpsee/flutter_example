library response;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gifun/data/serializer/serializers.dart';

part 'response.g.dart';

abstract class Response<T> implements Built<Response<T>, ResponseBuilder<T>> {
  static Serializer<Response> get serializer => _$responseSerializer;

  int get error;
  String get message;
  T get data;

  factory Response([updates(ResponseBuilder<T> b)]) = _$Response<T>;
  Response._();

  
}
