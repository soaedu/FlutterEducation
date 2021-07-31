
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
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4, bottom: 4),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/pic1_small.jpg'),
                    Image.asset('images/pic2_small.jpg'),
                    Image.asset('images/pic3_small.jpg'),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4, bottom: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset('images/pic1.jpg'),
                  ),
                  Expanded(
                    child: Image.asset('images/pic2.jpg'),
                  ),
                  Expanded(
                    child: Image.asset('images/pic3.jpg'),
                  ),
                ]
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4, bottom: 4),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset('images/pic1.jpg'),
                    ),
                    Expanded(
                      flex: 2,
                      child: Image.asset('images/pic2.jpg'),
                    ),
                    Expanded(
                      child: Image.asset('images/pic3.jpg'),
                    ),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4, bottom: 4),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    const Icon(Icons.star, color: Colors.black),
                    const Icon(Icons.star, color: Colors.black),
                  ],
                ),
              )
            ),
          ],
        )
      ),
    );
  }
}