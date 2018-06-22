import 'package:flutter/material.dart';
import 'package:gifun/presentation/home_screen.dart';
import 'package:gifun/presentation/popular_screen.dart';
import 'package:gifun/presentation/favorites_screen.dart';
import 'package:gifun/presentation/my_screen.dart';
import 'package:gifun/presentation/loading_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  List<BottomNavigationBarItem> _navigationItems = <BottomNavigationBarItem>[
    new BottomNavigationBarItem(icon: new Icon(Icons.home), title: Text('首页')),
    new BottomNavigationBarItem(
        icon: new Icon(Icons.hot_tub), title: Text('热门')),
    new BottomNavigationBarItem(
        icon: new Icon(Icons.favorite), title: Text('收藏')),
    new BottomNavigationBarItem(
        icon: new Icon(Icons.account_box), title: Text('My'))
  ];

  List<Widget> _pages = <Widget>[
    new HomeScreen(),
    new PopularScreen(),
    new FavoritesScreen(),
    new MyScreen()
  ];

  int _currIndex = -1;

  @override
  void initState() {
    super.initState();

    SharedPreferences.getInstance().then((prefs) {
      final index = prefs.getInt("_currIndex");
      setState(() {
        _currIndex = index?.toInt() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (-1 == _currIndex) {
      return new LoadingContainer();
    }

    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.purple,
      currentIndex: _currIndex,
      items: _navigationItems,
      onTap: (int index) {
        setState(() {
          _currIndex = index;
          SharedPreferences.getInstance().then((prefs) {
            prefs.setInt("_currIndex", _currIndex);
          });
        });
      },
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Gifun'),
        centerTitle: true,
      ),
      body: new IndexedStack(
        index: _currIndex,
        children: _pages,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
