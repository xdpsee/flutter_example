library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gifun/data/entities/user_entity.dart';
import 'package:gifun/data/entities/post_entity.dart';
import 'package:gifun/common/enums.dart';
import 'package:gifun/data/datasource/response/response.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Response,
  UserEntity,
  PostEntity,
  TagEntity,
  ContentEntity,
  ContentType,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
