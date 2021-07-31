
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - Using UnconstrainedBox Widget Examples
///   https://www.woolha.com/tutorials/flutter-using-unconstrainedbox-widget-examples
///
/// What if you want to retain the constraint for a certain axis?
/// For example, you want to retain the constraint for horizontal axis, but not
/// for vertical axis.
/// You can set constrainedAxis property to Axis.horizontal.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UnconstrainedBox example",
      home: Scaffold(
        appBar: AppBar(
          title: Text("UnconstrainedBox example"),
        ),
        body: Container(
          width: 200,
          height: 200,
          color: Colors.black38,
          child: UnconstrainedBox(
            constrainedAxis: Axis.horizontal,
            child: SizedBox(
              width: 100,
              height: 50,
              child: RaisedButton(
                  color: Colors.teal,
                  child: Text(
                    "Woohla",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  onPressed: () { print('Woohla!'); }
              ),
            )
          ),
        )
      ),
    );
  }
}