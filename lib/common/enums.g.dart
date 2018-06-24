// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enums.dart';

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

const ContentType _$text = const ContentType._('TEXT');
const ContentType _$image = const ContentType._('IMAGE');
const ContentType _$audio = const ContentType._('AUDIO');
const ContentType _$video = const ContentType._('VIDEO');

ContentType _$valueOf(String name) {
  switch (name) {
    case 'TEXT':
      return _$text;
    case 'IMAGE':
      return _$image;
    case 'AUDIO':
      return _$audio;
    case 'VIDEO':
      return _$video;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ContentType> _$values =
    new BuiltSet<ContentType>(const <ContentType>[
  _$text,
  _$image,
  _$audio,
  _$video,
]);

class _$ContentTypeMeta {
  const _$ContentTypeMeta();
  ContentType get TEXT => _$text;
  ContentType get IMAGE => _$image;
  ContentType get AUDIO => _$audio;
  ContentType get VIDEO => _$video;
  ContentType valueOf(String name) => _$valueOf(name);
  BuiltSet<ContentType> get values => _$values;
}

abstract class _$ContentTypeMixin {
  // ignore: non_constant_identifier_names
  _$ContentTypeMeta get ContentType => const _$ContentTypeMeta();
}

Serializer<ContentType> _$contentTypeSerializer = new _$ContentTypeSerializer();

class _$ContentTypeSerializer implements PrimitiveSerializer<ContentType> {
  @override
  final Iterable<Type> types = const <Type>[ContentType];
  @override
  final String wireName = 'ContentType';

  @override
  Object serialize(Serializers serializers, ContentType object,
          {FullType specifiedType: FullType.unspecified}) =>
      object.name;

  @override
  ContentType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      ContentType.valueOf(serialized as String);
}
