
import 'package:flutter/material.dart';

/// Flutter - Using FractionallySizedBox Widget Examples
///   https://www.woolha.com/tutorials/flutter-using-fractionallysizedbox-widget-examples
///
/// In Flutter, what if you need to set the size of a widget relative to the
/// available space.
/// For example, you want to set the width of a button to be 70% of the parent
/// container.
/// For that purpose, Flutter has a widget named FractionallySizedBox.
void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FractionallySizedBox example'),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 100.0,
          color: Color.fromARGB(255, 235, 237, 237),
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.25,
            child:  RaisedButton(
              child: Text('Click'),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {
              },
            ),
          ),
        ),
      ),
    );
  }
}
