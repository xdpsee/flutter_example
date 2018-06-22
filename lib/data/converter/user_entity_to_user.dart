import 'package:gifun/domain/model/user.dart';
import 'package:gifun/data/entities/user_entity.dart';

User UserEntity2User(UserEntity userEntity) {
    return new User(userEntity.userId, userEntity.nickName, userEntity.avatarImage, userEntity.coverImage);
}
