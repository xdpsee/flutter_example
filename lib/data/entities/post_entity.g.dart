// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entity.dart';

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

Serializer<ContentEntity> _$contentEntitySerializer =
    new _$ContentEntitySerializer();
Serializer<TagEntity> _$tagEntitySerializer = new _$TagEntitySerializer();
Serializer<PostEntity> _$postEntitySerializer = new _$PostEntitySerializer();

class _$ContentEntitySerializer implements StructuredSerializer<ContentEntity> {
  @override
  final Iterable<Type> types = const [ContentEntity, _$ContentEntity];
  @override
  final String wireName = 'ContentEntity';

  @override
  Iterable serialize(Serializers serializers, ContentEntity object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(ContentType)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ContentEntity deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ContentEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(ContentType)) as ContentType;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TagEntitySerializer implements StructuredSerializer<TagEntity> {
  @override
  final Iterable<Type> types = const [TagEntity, _$TagEntity];
  @override
  final String wireName = 'TagEntity';

  @override
  Iterable serialize(Serializers serializers, TagEntity object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TagEntity deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new TagEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PostEntitySerializer implements StructuredSerializer<PostEntity> {
  @override
  final Iterable<Type> types = const [PostEntity, _$PostEntity];
  @override
  final String wireName = 'PostEntity';

  @override
  Iterable serialize(Serializers serializers, PostEntity object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(num)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'contents',
      serializers.serialize(object.contents,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ContentEntity)])),
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(TagEntity)])),
    ];

    return result;
  }

  @override
  PostEntity deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new PostEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contents':
          result.contents.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ContentEntity)]))
              as BuiltList);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(TagEntity)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ContentEntity extends ContentEntity {
  @override
  final ContentType type;
  @override
  final String value;
  @override
  final int width;
  @override
  final int height;
  @override
  final int duration;

  factory _$ContentEntity([void updates(ContentEntityBuilder b)]) =>
      (new ContentEntityBuilder()..update(updates)).build();

  _$ContentEntity._(
      {this.type, this.value, this.width, this.height, this.duration})
      : super._() {
    if (type == null)
      throw new BuiltValueNullFieldError('ContentEntity', 'type');
    if (value == null)
      throw new BuiltValueNullFieldError('ContentEntity', 'value');
    if (width == null)
      throw new BuiltValueNullFieldError('ContentEntity', 'width');
    if (height == null)
      throw new BuiltValueNullFieldError('ContentEntity', 'height');
    if (duration == null)
      throw new BuiltValueNullFieldError('ContentEntity', 'duration');
  }

  @override
  ContentEntity rebuild(void updates(ContentEntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentEntityBuilder toBuilder() => new ContentEntityBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ContentEntity) return false;
    return type == other.type &&
        value == other.value &&
        width == other.width &&
        height == other.height &&
        duration == other.duration;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, type.hashCode), value.hashCode), width.hashCode),
            height.hashCode),
        duration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContentEntity')
          ..add('type', type)
          ..add('value', value)
          ..add('width', width)
          ..add('height', height)
          ..add('duration', duration))
        .toString();
  }
}

class ContentEntityBuilder
    implements Builder<ContentEntity, ContentEntityBuilder> {
  _$ContentEntity _$v;

  ContentType _type;
  ContentType get type => _$this._type;
  set type(ContentType type) => _$this._type = type;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  int _duration;
  int get duration => _$this._duration;
  set duration(int duration) => _$this._duration = duration;

  ContentEntityBuilder();

  ContentEntityBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _value = _$v.value;
      _width = _$v.width;
      _height = _$v.height;
      _duration = _$v.duration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentEntity other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ContentEntity;
  }

  @override
  void update(void updates(ContentEntityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentEntity build() {
    final _$result = _$v ??
        new _$ContentEntity._(
            type: type,
            value: value,
            width: width,
            height: height,
            duration: duration);
    replace(_$result);
    return _$result;
  }
}

class _$TagEntity extends TagEntity {
  @override
  final int id;
  @override
  final String title;

  factory _$TagEntity([void updates(TagEntityBuilder b)]) =>
      (new TagEntityBuilder()..update(updates)).build();

  _$TagEntity._({this.id, this.title}) : super._() {
    if (id == null) throw new BuiltValueNullFieldError('TagEntity', 'id');
    if (title == null) throw new BuiltValueNullFieldError('TagEntity', 'title');
  }

  @override
  TagEntity rebuild(void updates(TagEntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TagEntityBuilder toBuilder() => new TagEntityBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TagEntity) return false;
    return id == other.id && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TagEntity')
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class TagEntityBuilder implements Builder<TagEntity, TagEntityBuilder> {
  _$TagEntity _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  TagEntityBuilder();

  TagEntityBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagEntity other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TagEntity;
  }

  @override
  void update(void updates(TagEntityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TagEntity build() {
    final _$result = _$v ?? new _$TagEntity._(id: id, title: title);
    replace(_$result);
    return _$result;
  }
}

class _$PostEntity extends PostEntity {
  @override
  final num id;
  @override
  final String title;
  @override
  final BuiltList<ContentEntity> contents;
  @override
  final BuiltList<TagEntity> tags;

  factory _$PostEntity([void updates(PostEntityBuilder b)]) =>
      (new PostEntityBuilder()..update(updates)).build();

  _$PostEntity._({this.id, this.title, this.contents, this.tags}) : super._() {
    if (id == null) throw new BuiltValueNullFieldError('PostEntity', 'id');
    if (title == null)
      throw new BuiltValueNullFieldError('PostEntity', 'title');
    if (contents == null)
      throw new BuiltValueNullFieldError('PostEntity', 'contents');
    if (tags == null) throw new BuiltValueNullFieldError('PostEntity', 'tags');
  }

  @override
  PostEntity rebuild(void updates(PostEntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostEntityBuilder toBuilder() => new PostEntityBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! PostEntity) return false;
    return id == other.id &&
        title == other.title &&
        contents == other.contents &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), title.hashCode), contents.hashCode),
        tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostEntity')
          ..add('id', id)
          ..add('title', title)
          ..add('contents', contents)
          ..add('tags', tags))
        .toString();
  }
}

class PostEntityBuilder implements Builder<PostEntity, PostEntityBuilder> {
  _$PostEntity _$v;

  num _id;
  num get id => _$this._id;
  set id(num id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  ListBuilder<ContentEntity> _contents;
  ListBuilder<ContentEntity> get contents =>
      _$this._contents ??= new ListBuilder<ContentEntity>();
  set contents(ListBuilder<ContentEntity> contents) =>
      _$this._contents = contents;

  ListBuilder<TagEntity> _tags;
  ListBuilder<TagEntity> get tags =>
      _$this._tags ??= new ListBuilder<TagEntity>();
  set tags(ListBuilder<TagEntity> tags) => _$this._tags = tags;

  PostEntityBuilder();

  PostEntityBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _contents = _$v.contents?.toBuilder();
      _tags = _$v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostEntity other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$PostEntity;
  }

  @override
  void update(void updates(PostEntityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PostEntity build() {
    _$PostEntity _$result;
    try {
      _$result = _$v ??
          new _$PostEntity._(
              id: id,
              title: title,
              contents: contents.build(),
              tags: tags.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contents';
        contents.build();
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostEntity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
