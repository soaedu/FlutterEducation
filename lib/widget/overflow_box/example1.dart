
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - Using OverflowBox Widget Examples
///   https://www.woolha.com/tutorials/flutter-using-overflowbox-widget-examples
///
/// OverflowBox allows you to impose different constraints to the child and
/// makes it possible for the child to overflow its parent.
///
/// If you define maxWidth and/or maxHeight, the values must be greater or
/// equal than the parent's width and height constraints respectively.
/// Otherwise an assertion error will be thrown.
///
/// Let's set the maxWidth to 400.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OverflowBox example",
      home: Scaffold(
        appBar: AppBar(
          title: Text("OverflowBox example"),
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.black38,
            child: OverflowBox(
                maxWidth: 400,
                minHeight: 10,
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                      color: Color.fromARGB(100, 0, 128, 128),
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
        )
      ),
    );
  }
}