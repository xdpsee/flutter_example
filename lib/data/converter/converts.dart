import 'package:built_collection/built_collection.dart';
import 'package:gifun/domain/model/user.dart';
import 'package:gifun/data/entities/user_entity.dart';
import 'package:gifun/domain/model/post.dart';
import 'package:gifun/data/entities/post_entity.dart';

User UserEntity2User(UserEntity userEntity) {
  return new User(userEntity.userId, userEntity.nickName,
      userEntity.avatarImage, userEntity.coverImage);
}

Post PostEntity2Post(PostEntity postEntity) {
  Post post = new Post(
      postEntity.id,
      postEntity.title,
      postEntity.contents.map((e) {
        return new Content(e.type, e.value, e.width, e.height, e.duration);
      }).toList(),
      postEntity.tags.map((e) {
        return new Tag(e.id, e.title);
      }).toList());

  return post;
}

BuiltList<Post> PostEntities2Posts(BuiltList<PostEntity> posts) {
    return BuiltList(posts.map((e)=>PostEntity2Post(e)).toList());
}
