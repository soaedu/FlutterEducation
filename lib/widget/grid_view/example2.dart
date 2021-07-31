
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SampleGridViewApp());

class SampleGridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final Orientation orientation = MediaQuery.of(context).orientation;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView example"),
        ),
        // body: _buildGrid(orientation),
        body: _buildGrid(),
      ),
    );
  }

  //Widget _buildGrid(Orientation orientation) => Column(
  Widget _buildGrid() => Column(
    children: <Widget>[
      Expanded(
        child: SafeArea(
          top: false,
          bottom: false,
          child: GridView.count(
            // crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            padding: const EdgeInsets.all(4.0),
            // childAspectRatio: (orientation == Orientation.portrait) ? 1.0 : 1.3,
            childAspectRatio: 1.0,
            children: _buildGridTileList(10),
          ),
        ),
      ),
    ]
  );

  List<Container> _buildGridTileList(int count) => List.generate(
    count, (i) => Container(
      child: Image.asset('images/pic$i.jpg'),
    )
  );
}