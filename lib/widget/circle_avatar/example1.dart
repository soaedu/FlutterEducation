
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SimpleCircleAvatarApp());

class SimpleCircleAvatarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("CircleAvatar"),
        ),
        body: Center(
          child: _buildStack(),
        )
      ),
    );
  }

  Widget _buildStack() => Stack(
    alignment: const Alignment(0.6, 0.6),
    children: [
      const CircleAvatar(
        backgroundImage: AssetImage('images/pic2.jpg'),
        radius: 100,
      ),
      Container(
        decoration: const BoxDecoration(
          color: Colors.black45,
        ),
        child: const Text(
          'Mia B',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}