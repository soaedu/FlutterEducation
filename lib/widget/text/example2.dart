
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Aligning text"),
    ),
    body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              'Hey!',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Futura',
                color: Colors.blue,
              ),
            ),
            Text(
              'Hey!',
              style: TextStyle(
                fontSize: 50.0,
                fontFamily: 'Futura',
                color: Colors.green,
              ),
            ),
            Text(
              'Hey!',
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Futura',
                color: Colors.red,
              ),
            ),
          ],
        )
    ),
  ),
));