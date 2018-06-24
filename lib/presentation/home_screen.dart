import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gifun/presentation/loading_screen.dart';
import 'package:gifun/presentation/recommend_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _currIndex = -1;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      SharedPreferences.getInstance().then((prefs) {
        prefs.setInt('home_screen.currIndex', _tabController.index);
      });
    });
    SharedPreferences.getInstance().then((prefs) {
      var index = prefs.getInt("home_screen.currIndex");
      setState(() {
        _currIndex = index?.toInt() ?? 0;
        _tabController.index = _currIndex;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (-1 == _currIndex) {
      return new LoadingScreen();
    }

    return new Scaffold(
        appBar: new AppBar(
          title: TabBar(
            controller: _tabController,
            tabs: [
              const Tab(text: '推荐'),
              const Tab(text: 'GIF'),
              const Tab(text: '视频'),
              const Tab(text: '美图'),
              const Tab(text: '标签'),
            ],
            indicatorSize: TabBarIndicatorSize.label,
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          controller: _tabController,
          children: [
            RecommendScreen(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_walk),
            Icon(Icons.directions_boat),
          ],
        ));
  }
}
