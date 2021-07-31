
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - Using UnconstrainedBox Widget Examples
///   https://www.woolha.com/tutorials/flutter-using-unconstrainedbox-widget-examples
///
/// As the size of the child may not be the same as the size of the parent,
/// Flutter needs to handle how the child should be laid out inside its parent.
/// The default value is Alignment.center, but you can override it by passing
/// alignment property whose type is AlignmentGeometry.
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
            alignment: AlignmentDirectional.bottomStart,
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