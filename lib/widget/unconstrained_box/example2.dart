
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - Using UnconstrainedBox Widget Examples
///   https://www.woolha.com/tutorials/flutter-using-unconstrainedbox-widget-examples
///
/// You can also set a different size by wrapping the child inside another
/// widget that allows you to set different constraints, such as another
/// SizedBox or Container.
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