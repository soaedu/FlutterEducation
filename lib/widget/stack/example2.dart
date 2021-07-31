
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to design FrameLayout in Flutter.
///   https://medium.com/flutter-community/flutter-for-android-developers-how-to-design-framelayout-in-flutter-93a19fc7e7a6
///
/// No BoxConstraints.expand() inside "body: new Container("
/// Stack takes the maximum size from its available children i.e wrap_content.
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
            alignment: AlignmentDirectional.topStart, // topStart|topCenter|topEnd|centerStart|center|centerEnd|bottomStart|bottomCenter|bottomEnd
            children: [
              Container(
                height: 200.0,
                width: 200.0,
                color: Colors.red,
              ),
              Container(
                height: 150.0,
                width: 150.0,
                color: Colors.blue,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.green,
              ),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}