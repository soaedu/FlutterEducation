
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to design LinearLayout in Flutter
///   https://proandroiddev.com/flutter-for-android-developers-how-to-design-linearlayout-in-flutter-5d819c0ddf1a
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
          title: new Text("LinearLayout Example"),
        ),
        body: new Container(
          color: Colors.yellowAccent,
          child: new Container(
            child: new Row(
              children: [
                new Expanded(
                    child: new Container(
                      child: new Icon(
                          Icons.access_time,
                          size: 50.0
                      ),
                      color: Colors.red,
                    ),
                    flex: 2,
                ),
                new Expanded(
                  child: new Container(
                    child: new Icon(
                        Icons.pie_chart,
                        size: 100.0
                    ),
                    color: Colors.blue,
                  ),
                  flex: 4,
                ),
                new Expanded(
                  child: new Container(
                    child: new Icon(
                        Icons.email,
                        size: 50.0
                    ),
                    color: Colors.green,
                  ),
                  flex: 6,
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}