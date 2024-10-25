import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: SafeArea(
              top: true,
              bottom: true,
              left: true,
              right: true,
              child: Container(
                color: Colors.red,
                height: 300.0,
                width: 300.0,
              )
            )
          ),
        ),
      );
  }
}
