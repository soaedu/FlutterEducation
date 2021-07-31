
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(new SampleApp());

class SampleApp extends StatefulWidget {
  @override
  _SampleAppState createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    curve = CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onDoubleTap: () {
              if (controller.isCompleted) {
                controller.reverse();
              } else {
                controller.forward();
              }
            },
            child: RotationTransition(
              turns: curve,
              child: FlutterLogo(
                size: 200.0,
              ),
            ),
          ),
        ),
      )
    );
  }
}