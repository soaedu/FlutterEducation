
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - CustomScrollView example
///   https://api.flutter.dev/flutter/widgets/GridView-class.html
///
/// This example shows how to create the same grid as the previous example
/// using a CustomScrollView and a SliverGrid.
void main() => runApp(new CustomScrollViewApp());

class CustomScrollViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CustomScrollView app",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("CustomScrollView example"),
        ),
        body: CustomScrollViewPage()
      )
    );
  }
}

class CustomScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("He'd have you all unravel at the"),
                color: Colors.green[100],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Heed not the rabble'),
                color: Colors.green[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Sound of screams but the'),
                color: Colors.green[300],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Who scream'),
                color: Colors.green[400],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution is coming...'),
                color: Colors.green[500],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution, they...'),
                color: Colors.green[600],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

