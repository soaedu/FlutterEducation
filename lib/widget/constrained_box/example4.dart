
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - Using ConstrainedBox Widget Examples
///   https://www.woolha.com/tutorials/flutter-using-constrainedbox-widget-examples
///
/// BoxConstraints doesn't work because there are already size constraints
/// from the SizedBox.
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
        body: SizedBox(
          height: 50,
          width: 100,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
                minHeight: 10,
                maxWidth: 50
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
        )
      ),
    );
  }
}