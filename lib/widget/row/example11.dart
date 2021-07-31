
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Putting it all together
///   https://flutter.dev/docs/codelabs/layout-basics#putting-it-all-together
///
///
void main() => runApp(BusinessCardPage());

class BusinessCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BusinessCard example"),
        ),
        body: Container(
          // height: 400,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all()
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                  ),
                  Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Flutter McFlutter',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text("Experienced App Developer"),
                      ]
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text('123 Main Street'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Text('(415) 555-0198'),
                  )
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.accessibility),
                  Icon(Icons.timer),
                  Icon(Icons.phone_android),
                  Icon(Icons.phone_iphone),
                ],
              ),
              SizedBox(
                height: 18.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}