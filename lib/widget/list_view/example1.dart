
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Scrollable content"),
        ),
        body: ListView(
            children: <Widget> [
              Text('Row One'),
              Text('Row Two'),
              Text('Row Three'),
              Text('Row Four'),
            ],
        ),
      ),
    );
  }
}