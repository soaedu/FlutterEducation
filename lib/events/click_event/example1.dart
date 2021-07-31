
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              print('tap');
            },
            child: FlutterLogo(
              size: 200.0,
            ),
          ),
        ),
      )
    );
  }
}