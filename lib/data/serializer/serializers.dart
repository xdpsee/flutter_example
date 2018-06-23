library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:gifun/data/entities/user_entity.dart';
import 'package:gifun/data/datasource/response/response.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Response,
  UserEntity,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
