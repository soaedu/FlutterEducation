
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - GridView example
///   https://api.flutter.dev/flutter/widgets/GridView-class.html
///
/// GridView is a scrollable, 2D array of widgets.
///
/// This example demonstrates how to create a GridView with two columns.
/// The children are spaced apart using the:
///   * crossAxisSpacing
///   * mainAxisSpacing
/// properties.
void main() => runApp(new GridViewApp());

class GridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GridView app",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView example"),
        ),
        body: GridViewPage()
      )
    );
  }
}

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("He'd have you all unravel at the"),
          color: Colors.teal[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Heed not the rabble'),
          color: Colors.teal[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Sound of screams but the'),
          color: Colors.teal[300],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Who scream'),
          color: Colors.teal[400],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution is coming...'),
          color: Colors.teal[500],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
      ],
    );
  }
}

