
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - Using UnconstrainedBox Widget Examples
///   https://www.woolha.com/tutorials/flutter-using-unconstrainedbox-widget-examples
///
/// However, you need to make sure that the size of the child doesn't overflow
/// the parent's constraints.
/// In debug mode, you will get black and yellow striped areas if that occurs.
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
              width: 300,
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