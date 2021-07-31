
import 'package:flutter/material.dart';

/// Use:
///   * Flexible to resize widgets in a Row or Column.
///       That way, you can adjust a child widget’s spacing while keeping its
///       size in relation to its parent widget.
///    * Expanded changes the constraints of a child widget, so it fills any
///       empty space.
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
              height: 100,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BlueBox(),
                  // Flexible(
                  //     fit: FlexFit.tight,
                  //     flex: 1,
                  //     child: BlueBox()
                  // ),
                  Expanded(
                    child: BlueBox()
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