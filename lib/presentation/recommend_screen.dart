import 'package:flutter/material.dart';
import "package:pull_to_refresh/pull_to_refresh.dart";
import 'package:gifun/domain/model/post.dart';
import 'package:gifun/common/enums.dart';
import 'package:gifun/data/repository/post_repository_impl.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:video_player/video_player.dart';

class RecommendScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RecommendScreenState();
}

class RecommendScreenState extends State<RecommendScreen> {
  final List<Post> _posts = new List<Post>();

  final PostRepositoryImpl _postRepository = new PostRepositoryImpl();

  final ShapeBorder _shape = const RoundedRectangleBorder(
      borderRadius: const BorderRadius.only(
          topLeft: const Radius.circular(1.0),
          topRight: const Radius.circular(1.0),
          bottomLeft: const Radius.circular(1.0),
          bottomRight: const Radius.circular(1.0)));
  @override
  void initState() {
    super.initState();

    _postRepository.getRecommends(null, 20).then((posts) {
      _posts.addAll(posts);

      setState(() {});
    }, onError: (e) {
      print(e);
    }).catchError((e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        onRefresh: _onRefresh,
        onOffsetChange: _onOffsetChange,
        child: new ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: _posts.length,
          itemBuilder: (context, index) {
            return _itemBuilder(_posts[index]);
          },
        ));
  }

  Widget _itemBuilder(Post post) {
    return new Card(
      shape: _shape,
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new ListTile(
            title: new Text(
              post.title,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          _buildMediaWidget(post),
          new ButtonTheme.bar(
            child: new ButtonBar(
              children: <Widget>[
                new FlatButton(
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.grey,
                  ),
                  onPressed: () {/* ... */},
                ),
                new FlatButton(
                  child: const Icon(Icons.favorite, color: Colors.grey),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMediaWidget(Post post) {
    if (null == post || post.contents.isEmpty) {
      return Container();
    }

    final List<Widget> widgets = new List<Widget>();
    for (Content content in post.contents) {
      switch (content.type) {
        case ContentType.TEXT:
          widgets.add(new Text(content.value));
          break;
        case ContentType.IMAGE:
          widgets.add(new CachedNetworkImage(
            placeholder: new CircularProgressIndicator(),
            imageUrl: content.value,
            errorWidget: new Icon(Icons.broken_image, size: content.width.toDouble(),),
          ));
          break;
        case ContentType.VIDEO:
          {}
          break;
        case ContentType.AUDIO:
          {}
          break;
        default:
          break;
      }

      return new Column(
        children: widgets,
      );
    }
  }

  void _onRefresh(bool up) {
    if (up) {
    } else {}
  }

  void _onOffsetChange(bool up, double offset) {}
}
