
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List app"),
      ),
      body: ListView(
        children: _getListData(),
      )
    );
  }

  List<Widget> _getListData() {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i++) {
      widgets.add(
        GestureDetector(
          onTap: () {
            print("Tap on Row $i");
          },
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Row $i'),
          ),
        ));
    }
    return widgets;
  }
}