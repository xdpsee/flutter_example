import 'package:gifun/common/enums.dart';

class Content {
  ContentType type;
  String value;
  int width;
  int height;
  int duration;

  Content(this.type, this.value, this.width, this.height, this.duration);

  ContentType get getType => type;
  String get getValue => value;
  int get getWidth => width;
  int get getHeight => height;
  int get getDuration => duration;
}

class Tag {
  int id;
  String title;

  Tag(this.id, this.title);

  int get getId => id;
  String get getTitle => title;
}

class Post {
  num id;
  String title;
  List<Content> contents;
  List<Tag> tags;

  Post(this.id, this.title, this.contents, this.tags);

  num get getId => id;
  String get getTitle => title;
  List<Content> get getContents => contents;
  List<Tag> get getTags => tags;
}
