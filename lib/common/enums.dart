import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

part 'enums.g.dart';

class ContentType extends EnumClass {

  static const ContentType TEXT = _$text;
  static const ContentType IMAGE = _$image;
  static const ContentType AUDIO = _$audio;
  static const ContentType VIDEO = _$video;

  const ContentType._(String name) : super(name);

  static BuiltSet<ContentType> get values => _$values;
  static ContentType valueOf(String name) => _$valueOf(name);

  static Serializer<ContentType> get serializer => _$contentTypeSerializer;

}

abstract class ContentTypeMixin = Object with _$ContentTypeMixin;
