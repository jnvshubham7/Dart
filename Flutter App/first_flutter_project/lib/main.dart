import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
    
      home: Scaffold(
        appBar: AppBar(title: Text('Material Design Example')),
        body: Center(child: Text('Hello, Material Design!')),
      ),
    );
  }
}