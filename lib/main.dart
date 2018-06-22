import 'package:flutter/material.dart';
import 'package:gifun/presentation/main_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gifun',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: new MainScreen(),
    );
  }
}

