
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - Wrap example
///   https://api.flutter.dev/flutter/widgets/Wrap-class.html
///
/// Wrap is a widget that displays its children in multiple horizontal or
/// vertical runs.
///
/// A Wrap lays out each child and attempts to place the child adjacent to the
/// previous child in the main axis, given by direction, leaving spacing space
/// in between.
/// If there is not enough space to fit the child, Wrap creates a new run
/// adjacent to the existing children in the cross axis.
///
/// After all the children have been allocated to runs, the children within the
/// runs are positioned according to the alignment in the main axis and
/// according to the crossAxisAlignment in the cross axis.
///
/// The runs themselves are then positioned in the cross axis according to the
/// runSpacing and runAlignment.
void main() => runApp(new CustomScrollViewApp());

class CustomScrollViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wrap widget",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wrap widget example"),
        ),
        body: WrapWidgetPage()
      )
    );
  }
}

class WrapWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      children: <Widget>[
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: const Text('AH')
          ),
          label: const Text('Hamilton'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: const Text('ML')
          ),
          label: const Text('Lafayette'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: const Text('HM')
          ),
          label: const Text('Mulligan'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: const Text('JL')
          ),
          label: const Text('Laurens'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: const Text('KV')
          ),
          label: const Text('Jeronimo'),
        ),
      ],
    );
  }
}

