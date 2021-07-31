
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SampleImageApp());

class SampleImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image example"),
        ),
        body: Center(
          child: Image.asset(
            'images/lake.jpg',
          ),
        ),
      ),
    );
  }
}