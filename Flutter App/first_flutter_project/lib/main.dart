import 'package:first_flutter_project/Camera_permission.dart'; // Adjust this import path
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CameraPermissionExample(),
    );
  }
}
