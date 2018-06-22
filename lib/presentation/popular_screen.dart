import 'package:flutter/material.dart';

class PopularScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new PopularScreenState();

}

class PopularScreenState extends State<PopularScreen> {
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
                Icons.hot_tub,
                size: 160.0,
                color: Colors.pink,
              ),
              new Text(
                "Popular Tab",
                style: new TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

}