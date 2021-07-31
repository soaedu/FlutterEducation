
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to design FrameLayout in Flutter.
///   https://medium.com/flutter-community/flutter-for-android-developers-how-to-design-framelayout-in-flutter-93a19fc7e7a6
///
/// The "Positioned" widget is nothing but a widget that controls where a
/// child of a Stack is positioned.
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
          constraints: BoxConstraints.expand(),
          color: Colors.tealAccent,
          child: new Stack(
            children: [
              Positioned(
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.red,
                ),
                top: 10.0,
                left: 10.0,
              ),
              Positioned(
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  color: Colors.blue,
                ),
                top: 30.0,
                right: 50.0,
              ),
              Positioned(
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.green,
                ),
                bottom: 100.0,
                left: 30.0,
              ),
              Positioned(
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.yellow,
                ),
                bottom: 50.0,
                right: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
