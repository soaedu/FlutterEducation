
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to design FrameLayout in Flutter.
///   https://medium.com/flutter-community/flutter-for-android-developers-how-to-design-framelayout-in-flutter-93a19fc7e7a6
void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("FrameLayout"),
        ),
        body: new Container(
          color: Colors.tealAccent,
          child: new Stack(
            children: [
              Align(
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.red,
                ),
                alignment: AlignmentDirectional.topStart,
              ),
              Align(
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  color: Colors.blue,
                ),
                alignment: AlignmentDirectional.topEnd,
              ),
              Align(
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.green,
                ),
                alignment: AlignmentDirectional.bottomStart,
              ),
              Align(
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.yellow,
                ),
                alignment: AlignmentDirectional.bottomEnd,
              ),
            ],
          ),
        ),
      ),
    );
  }
}