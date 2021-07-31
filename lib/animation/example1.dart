import 'package:flutter/material.dart';

/// The following example shows how to write a FadeTransition that fades
/// the widget into a logo when you press the FloatingActionButton:
void main() {
  runApp(FadeAppTest());
}

class FadeAppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fade Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyFadeTest(title: 'Fade demo'),
    );
  }
}

class MyFadeTest extends StatefulWidget {
  MyFadeTest({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyFadeTest createState() => _MyFadeTest();
}

class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {
  late AnimationController controller;
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this
    );
    curve = CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FadeTransition(
          opacity: curve,
          child: FlutterLogo(
            size: 100.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Fade',
        onPressed: () {
          controller.forward();
        },
        child: Icon(Icons.brush),
      ),
    );
  }
}
