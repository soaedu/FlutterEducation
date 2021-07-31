
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - ListView example
///   https://api.flutter.dev/flutter/widgets/ListView-class.html
///
/// ListView is a scrollable list of widgets arranged linearly.
///
/// This example uses the default constructor for ListView which takes an
/// explicit List<Widget> of children. This ListView's children are made up of
/// Containers with Text.
void main() => runApp(new ListApp());

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List app",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView example"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
          ],
        )
      )
    );
  }
}