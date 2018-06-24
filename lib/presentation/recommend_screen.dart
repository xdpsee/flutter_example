import 'package:flutter/material.dart';
import "package:pull_to_refresh/pull_to_refresh.dart";
import 'package:gifun/domain/model/post.dart';
import 'package:gifun/data/repository/post_repository_impl.dart';

class RecommendScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RecommendScreenState();
}

class RecommendScreenState extends State<RecommendScreen> {
  final List<Post> _posts = new List<Post>();

  final PostRepositoryImpl _postRepository = new PostRepositoryImpl();

    @override
    void initState() {
        super.initState();

        _postRepository.getRecommends(null, 20).then((posts){
            print('');
        }, onError: (e){
            print(e);
        }).catchError((e){

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
          itemExtent: 40.0,
          itemCount: _posts.length,
          itemBuilder: (context, index) {
            return _itemBuilder(_posts[index]);
          },
        ));
  }

  Widget _itemBuilder(Post post) {
    return new ListTile(
      title: Text(''),
    );
  }

  void _onRefresh(bool up) {
    if (up) {
    } else {}
  }

  void _onOffsetChange(bool up, double offset) {}
}
