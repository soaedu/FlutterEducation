import 'package:flutter/material.dart';

/// Display a simple widget with padding
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Elevated button app",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Elevated button app'),
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.only(left: 20.0, right: 30.0),
            ),
            onPressed: () {},
            child: Text('Hello'),
          ),
        ),
      )
    );
  }
}