
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - Using UnconstrainedBox Widget Examples
///   https://www.woolha.com/tutorials/flutter-using-unconstrainedbox-widget-examples
///
/// UnconstrainedBox is a widget that imposes no constraints on its child.
/// Therefore, the child can render at the size as if it has no constraints.
/// The constraints from its parent are not applied on the child of
/// UnconstrainedBox.
///
/// By wrapping the button inside an UnconstrainedBox widget, the size of the
/// button is no longer determined by its ancestor's constraints.
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
          ),
        )
      ),
    );
  }
}