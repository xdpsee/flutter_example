import 'package:flutter/material.dart';
import 'package:gifun/domain/repository/user_repository.dart';
import 'package:gifun/data/repository/user_repository_impl.dart';
import 'package:gifun/data/exception/service_exception.dart';
import 'package:gifun/data/exception/user_not_found.dart';

class MyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyScreenState();
}

class MyScreenState extends State<MyScreen> {
  UserRepository _userRepository;
  String _error = '';
  //User _currentUser = new User(0, 'nickName', 'avatarImage', 'coverImage');

  @override
  void initState() {
    super.initState();
    _userRepository = new UserRepositoryImpl();

    _userRepository.getUser(1).then((user) {}).catchError((e) {
      setState(() {
        if (e is UserNotFoundException) {
          _error = '用户不存在';
        } else {
            _error = '服务不可用';
        }
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
              new Icon(
                Icons.account_box,
                size: 160.0,
                color: Colors.pink,
              ),
              new Text(
                _error,
                style: new TextStyle(color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
