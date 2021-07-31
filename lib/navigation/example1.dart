
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    home: MyAppHome(), // Becomes the route named '/'.
    routes: <String, WidgetBuilder> {
      '/a' : (BuildContext context) => MyPage(title: 'page A'),
      '/b' : (BuildContext context) => MyPage(title: 'page B'),
      '/c' : (BuildContext context) => MyPage(title: 'page C'),
    }
  ));
}

class MyAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator app"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/b');
          },
          child: Text("open page B"),
       ),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}