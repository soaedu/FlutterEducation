import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// How do I handle incoming intents from external applications in Flutter?
/// Source from:
///   https://flutter.dev/docs/get-started/flutter-for/android-devs#intents
///
/// Not finished and not working yet..
void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Shared App Handler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key? key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  static const platform = MethodChannel('app.channel.shared.data');
  String dataShared = 'No data';

  @override
  void initState() {
    super.initState();
    getSharedText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text(dataShared)
        )
    );
  }

  void getSharedText() async {
    var sharedData = await platform.invokeMethod('getSharedText');

    if (sharedData != null) {
      setState(() {
        dataShared = sharedData;
      });
    }
  }
}