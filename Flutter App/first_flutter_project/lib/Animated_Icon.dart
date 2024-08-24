import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Center(
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: AlwaysStoppedAnimation(0.5),
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
