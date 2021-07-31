import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CustomButtonApp()));

class CustomButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton("Hello"),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;

  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(label)
    );
  }
}
