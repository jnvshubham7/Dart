import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Progress Bar'),
        ),
        body: Center(
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 2),
            builder: (context, value, child) {
              return Container(
                width: 200,
                height: 20,
                child: LinearProgressIndicator(
                  value: value,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}