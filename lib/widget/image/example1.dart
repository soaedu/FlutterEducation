
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image example"),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Image.network(
                    'https://raw.githubusercontent.com/flutter/website/master/examples/layout/sizing/images/pic1.jpg',
                    height: 200,
                    width: 300,
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Image.network(
                  'https://raw.githubusercontent.com/flutter/website/master/examples/layout/sizing/images/pic2.jpg',
                  height: 200,
                  width: 300,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Image.network(
                  'https://raw.githubusercontent.com/flutter/website/master/examples/layout/sizing/images/pic3.jpg',
                  height: 200,
                  width: 300,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}