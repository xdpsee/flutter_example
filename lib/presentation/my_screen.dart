import 'package:flutter/material.dart';
import 'package:gifun/domain/repository/user_repository.dart';
import 'package:gifun/data/repository/user_repository_impl.dart';
import 'package:gifun/data/exception/user_not_found.dart';
import 'package:gifun/data/exception/service_exception.dart';
import 'package:gifun/domain/model/user.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyScreenState();
}

class MyScreenState extends State<MyScreen> {
  UserRepository _userRepository;
  String _error = '';
  User _currentUser = new User(0, '未知用户', 'https://tse2.mm.bing.net/th?id=OIP.pegfGc8sWHh2_RuwiuAknwHaHZ&pid=Api', '');

  @override
  void initState() {
    super.initState();
    _userRepository = new UserRepositoryImpl();

    _userRepository.getUser(1).then((user) {
        setState(() {
                  _currentUser.nickName = user.nickName;
                  _currentUser.userId = user.userId;
                  _currentUser.avatarImage = user.avatarImage;
                  _currentUser.coverImage = user.coverImage;
                });
    }, onError: (e) {
      setState(() {
        if (e is UserNotFoundException) {
          _error = '用户不存在';
        } else if (e is ServiceException) {
          _error = '服务不可用';
        } else {
          _error = '未知错误';
        }
      });
    }).catchError((e) {
      setState(() {
        _error = '未知错误';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
        child: new Center(
          child: new Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new CachedNetworkImage(
                  placeholder: new CircularProgressIndicator(),
                  imageUrl: _currentUser.avatarImage,
                  errorWidget: new Icon(Icons.account_circle),
              ),
              new Text(
                _currentUser.nickName,
                style: new TextStyle(color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
