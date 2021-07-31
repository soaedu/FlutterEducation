import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// How do I access Shared Preferences?
///   https://flutter.dev/docs/get-started/flutter-for/android-devs#activities-and-fragments
void main() => runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment Counter'),
        ),
      ),
    ),
  )
);

void _incrementCounter() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int counter = (prefs.getInt('counter') ?? 0) + 1;
  print('Pressed $counter times.');
  prefs.setInt('counter', counter);
}
