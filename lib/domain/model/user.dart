
class User {
     num userId;
     String nickName;
     String avatarImage;
     String coverImage;

    User(this.userId, this.nickName, this.avatarImage, this.coverImage);

    num get getUserId => userId;
    set setUserId(num userId) => this.userId = userId;
    String get getNickName => nickName;
    set setNickName(String nickName) => this.nickName = nickName;
    String get getAvatarImage => avatarImage;
    set setAvatarImage(String avatarImage) => this.avatarImage = avatarImage;
    String get getCoverImage => coverImage;
    set setCoverImage(String coverImage) => this.coverImage = coverImage;

}