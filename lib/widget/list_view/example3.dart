
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How do I update ListView’s dynamically?
///   https://flutter.dev/docs/get-started/flutter-for/android-devs#activities-and-fragments
///
/// The "ItemBuilder" function is similar to the "getView" function in an
/// Android adapter; it takes a position, and returns the row you want rendered
/// at that position.
///
/// Notice that the onTap() function doesn’t recreate the list anymore, but
/// instead .adds to it.
void main() => runApp(new ListApp());

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List app",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: ListAppPage(),
    );
  }
}

class ListAppPage extends StatefulWidget {
  ListAppPage({Key? key}) : super(key: key);

  @override
  _ListAppPageState createState() => _ListAppPageState();
}

class _ListAppPageState extends State<ListAppPage> {
  List<Widget> widgets = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 10; i++) {
      widgets.add(getRow(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List app"),
      ),
      body: ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (BuildContext context, int position) {
          return getRow(position);
        }
      ),
    );
  }

  Widget getRow(int i) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widgets.add(getRow(widgets.length));
          print('row $i');
        });
      },
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Row $i'),
      ),
    );
  }
}