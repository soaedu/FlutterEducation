
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter - CustomScrollView example
///   https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html
///
/// A ScrollView that creates custom scroll effects using slivers.
/// A CustomScrollView lets you supply slivers directly to create various
/// scrolling effects, such as lists, grids, and expanding headers.
/// For example, to create a scroll view that contains an expanding app bar
/// followed by a list and a grid, use a list of three slivers:
///   SliverAppBar, SliverList, and SliverGrid.
/// Widgets in these slivers must produce RenderSliver objects.
///
/// To control the initial scroll offset of the scroll view, provide a
/// controller with its ScrollController.initialScrollOffset property set.
///
/// This sample code shows a scroll view that contains a flexible pinned
/// app bar, a grid, and an infinite list.
void main() => runApp(new CustomScrollViewApp());

class CustomScrollViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CustomScrollView app",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
