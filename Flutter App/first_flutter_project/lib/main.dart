import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget Example'),
      ),
      body: Center(
        child: Text('Hello, Flutter!'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyStatelessWidget(),
  ));
}
