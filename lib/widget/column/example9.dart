
import 'package:flutter/material.dart';

/// The SizedBox widget can be used in one of two ways when creating exact dimensions:
///   1. When SizedBox wraps a widget, it resizes the widget using the height
///       and width properties.
///   2. When it doesn’t wrap a widget, it uses the height and width properties
///       to create empty space.
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
              // height: 300,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BlueBox(),
                  SizedBox(
                    height: 50,
                  ),
                  BlueBox(),
                  SizedBox(
                    height: 100,
                  ),
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