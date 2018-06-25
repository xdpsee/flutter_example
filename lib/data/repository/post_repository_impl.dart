import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gifun/data/exception/service_exception.dart';
import 'package:gifun/data/exception/unknown_exception.dart';
import 'package:gifun/data/datasource/response/response.dart';
import 'package:gifun/data/converter/converts.dart';
import 'package:gifun/data/entities/post_entity.dart';
import 'package:gifun/data/serializer/serializers.dart';
import 'package:gifun/domain/model/post.dart';
import 'package:gifun/domain/repository/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  @override
  Future<BuiltList<Post>> getRecommends(num timestamp, int count) async {
    String url =
        'https://easy-mock.com/mock/5b2c6900a46a453e3ea66330/gifun/recommend?timestamp=$timestamp&count=$count';

    try {
      http.Response response = await http.get(url);
      if (200 == response.statusCode) {
        Map<String, dynamic> jsonObj = json.decode(response.body);
        Response<BuiltList<PostEntity>> result = parse(jsonObj);
        if (0 == result.error) {
          return Future.value(PostEntities2Posts(result.data));
        }
      }
    } on Exception catch (e) {
      print(e);
      return Future.error(new ServiceException('服务不可用'));
    }

    return Future.error(new UnknownException());
  }

  Response<BuiltList<PostEntity>> parse(Map<String, dynamic> json) {
    FullType type = const FullType(Response, const [
      const FullType(BuiltList, const [const FullType(PostEntity)])
    ]);
    Serializers s = (serializers.toBuilder()
          ..addBuilderFactory(
              type,
              () => new ResponseBuilder<BuiltList<PostEntity>>())
          ..addBuilderFactory(
              const FullType(BuiltList, const [const FullType(PostEntity)]),
              () => new ListBuilder<PostEntity>())
          ..addBuilderFactory(
              const FullType(BuiltList, const [const FullType(ContentEntity)]),
              () => new ListBuilder<ContentEntity>())
          ..addBuilderFactory(
              const FullType(BuiltList, const [const FullType(TagEntity)]),
              () => new ListBuilder<TagEntity>()))
        .build();

    Response<BuiltList<PostEntity>> result =
        s.deserialize(json, specifiedType: type);
    return result;
  }
}
