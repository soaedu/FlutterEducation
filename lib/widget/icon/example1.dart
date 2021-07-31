
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icon example"),
        ),
        body: Container(
          color: Colors.deepPurple,
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Icon(
                Icons.widgets,
                size: 50,
                color: Colors.blue,
              ),
              Icon(
                Icons.widgets,
                size: 50,
                color: Colors.red,
              ),
              SizedBox(
                width: 75,
              ),
              Icon(
                Icons.home,
                size: 50,
                color: Colors.amber,
              ),
            ],
          ),
        )
      ),
    );
  }
}