import 'package:flutter/material.dart';
import 'news_app.dart'; // Import the other file

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('News Grid')),
        body: NewsGrid(),
      ),
    );
  }
}
