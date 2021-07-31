
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SampleGridViewApp());

class SampleGridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView example"),
        ),
        body: _buildGrid(),
      ),
    );
  }

  Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTileList(10),
  );

  List<Container> _buildGridTileList(int count) => List.generate(
    count, (i) => Container(
      child: Image.asset('images/pic$i.jpg'),
    )
  );
}