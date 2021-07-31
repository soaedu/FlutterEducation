
import 'package:flutter/material.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("BlueBoxes example"),
        ),
        body: new Container(
          color: Colors.yellowAccent,
          child: new Container(
            width: 100,
            // height: 250,
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BlueBox(),
                BlueBox(),
                BlueBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}