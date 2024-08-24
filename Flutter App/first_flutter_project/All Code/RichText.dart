import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        body: Center(
          child: RichText(
            text: TextSpan(

              children: <TextSpan>[
                TextSpan(text: 'Hello, ', style: TextStyle(fontSize: 24.0, color: Colors.blue, decoration: TextDecoration.underline ) ),
                // TextSpan(text: 'World!', style: TextStyle(fontSize: 36.0, color: Colors.red)),
                // TextSpan(text: ' This is an example of RichText widget', style: TextStyle(fontSize: 24.0, color: Colors.pink)),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}