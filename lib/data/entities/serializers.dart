library serializers;

import 'package:built_value/serializer.dart';
import 'package:gifun/data/entities/user_entity.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  UserEntity,
])
final Serializers serializers = _$serializers;