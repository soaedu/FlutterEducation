
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - ListView example
///   https://api.flutter.dev/flutter/widgets/ListView-class.html
///
/// ListView is a scrollable list of widgets arranged linearly.
///
/// This example continues to build from our the previous ones, creating a
/// similar list using ListView.separated.
/// Here, a Divider is used as a separator.
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
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text('Entry ${entries[index]}')),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}