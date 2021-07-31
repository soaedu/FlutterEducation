
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - Using ConstrainedBox Widget Examples
///   https://www.woolha.com/tutorials/flutter-using-constrainedbox-widget-examples
///
/// It turns out that Flutter combines both constraints.
/// In this case, it uses the outer constraint's minHeight because it's greater
/// than the inner's.
///
/// For minWidth, it uses the inner's because it's greater than the outers.
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
            minHeight: 80,
            maxWidth: 100
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 30,
              minWidth: 200
            ),
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
        ),
      ),
    );
  }
}