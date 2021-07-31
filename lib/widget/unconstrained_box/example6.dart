
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - Using UnconstrainedBox Widget Examples
///   https://www.woolha.com/tutorials/flutter-using-unconstrainedbox-widget-examples
///
/// If you use AlignmentDirectional, you can pass textDirection argument for
/// setting the TextDirection value.
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
            textDirection: TextDirection.rtl,
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