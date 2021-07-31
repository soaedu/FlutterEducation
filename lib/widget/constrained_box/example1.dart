
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - Using ConstrainedBox Widget Examples
///   https://www.woolha.com/tutorials/flutter-using-constrainedbox-widget-examples
///
/// The constraint limits the width of the widget's width so that the text is
/// wrapped into the next line.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ConstrainedBox example",
      home: Scaffold(
        appBar: AppBar(
          title: Text("ConstrainedBox example"),
        ),
        body: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 90
          ),
          child: Container(
            color: Colors.teal,
            child: Text(
              'Woolha dot com',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22
              ),
              overflow: TextOverflow.visible,
            ),
          ),
        ),
      ),
    );
  }
}