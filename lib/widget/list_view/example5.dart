
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - ListView example
///   https://api.flutter.dev/flutter/widgets/ListView-class.html
///
/// ListView is a scrollable list of widgets arranged linearly.
///
/// This example mirrors the previous one, creating the same list using the
/// ListView.builder constructor.
/// Using the IndexedWidgetBuilder, children are built lazily and can be
/// infinite in number.
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
        body: ListPage()
      )
    );
  }
}

class ListPage extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('Entry ${entries[index]}')),
          );
        }
    );
  }
}