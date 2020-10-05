import 'package:flutter/material.dart';
import 'package:furniture_app/screens/main_screen.dart';
import 'package:furniture_app/util/const.dart';
import 'package:flutter/cupertino.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      home: NewScreen(),
    );
  }
}

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Center(child: Text('Mantab Gaes')));
  }
}
