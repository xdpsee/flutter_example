import 'dart:async';
import 'package:built_collection/built_collection.dart';
import 'package:gifun/domain/model/post.dart';

abstract class PostRepository {
    Future<BuiltList<Post>> getRecommends(num timestamp, int count);
}





