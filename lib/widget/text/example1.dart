
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Custom font"),
    ),
    body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              child: Text(
                'This is a \'GreatVibes\' font',
                style: TextStyle(
                  color: Colors.green,
                  decorationColor: Colors.deepOrangeAccent,
                  fontFamily: 'GreatVibes',
                  fontSize: 14.0,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 8.0
                ),
              ),
              padding: EdgeInsets.all(20.0),
            ),
            Padding(
              child:Text(
                'This is a \'MotionPicture\' font',
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'MotionPicture',
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                  wordSpacing: 3
                ),
              ),
              padding: EdgeInsets.all(20.0),
            ),
            Padding(
              child:Text(
                'This is a \'RemachineScript\' font',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontFamily: 'RemachineScript',
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              padding: EdgeInsets.all(20.0),
            ),
          ],
        )
    ),
  ),
));