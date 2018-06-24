import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:gifun/common/enums.dart';
part 'post_entity.g.dart';

abstract class ContentEntity implements Built<ContentEntity, ContentEntityBuilder>{
  ContentType get type;
  String get value;
  int get width;
  int get height;
  int get duration;

  ContentEntity._();
  factory ContentEntity([updates(ContentEntityBuilder b)]) = _$ContentEntity;
  static Serializer<ContentEntity> get serializer => _$contentEntitySerializer;
}

abstract class TagEntity implements Built<TagEntity, TagEntityBuilder> {
    int get id;
    String get title;

    TagEntity._();
  factory TagEntity([updates(TagEntityBuilder b)]) = _$TagEntity;
  static Serializer<TagEntity> get serializer => _$tagEntitySerializer;
}

abstract class PostEntity implements Built<PostEntity, PostEntityBuilder> {
  num get id;
  String get title;
  BuiltList<ContentEntity> get contents;
  BuiltList<TagEntity> get tags;

  PostEntity._();
  factory PostEntity([updates(PostEntityBuilder b)]) = _$PostEntity;
  static Serializer<PostEntity> get serializer => _$postEntitySerializer;
}

// abstract class PostList implements Built<PostList, PostListBuilder> {
//     int get error;
//     String get message;
// BuiltList<PostEntityBuilder> get data;

// PostList
// }