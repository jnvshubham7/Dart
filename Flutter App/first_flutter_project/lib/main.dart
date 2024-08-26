import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dialog Example ',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dialog Example'),
      ),
      body: Stack(
  alignment: Alignment.center,
  children: <Widget>[
    Container(
      width: 200,
      height: 200,
      color: Colors.red,
    ),
    Container(
      width: 150,
      height: 150,
      color: Colors.green,
    ),
    Positioned(
      bottom: 10,
      right: 10,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    ),
  ],
)
    );
  }


}
