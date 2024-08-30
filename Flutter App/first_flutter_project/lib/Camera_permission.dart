import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraPermissionExample extends StatefulWidget {
  @override
  _CameraPermissionExampleState createState() =>
      _CameraPermissionExampleState();
}

class _CameraPermissionExampleState extends State<CameraPermissionExample> {
  late Permission _cameraPermission;

  @override
  void initState() {
    super.initState();
    _cameraPermission = Permission.camera;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera Permission Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _requestCameraPermission,
          child: Text('Request Camera Permission'),
        ),
      ),
    );
  }

  void _requestCameraPermission() async {
    final status = await _cameraPermission.request();
    if (status.isGranted) {
      // Permission granted, you can now access the camera
      print('Camera permission granted');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Camera permission granted')),
      );
    } else if (status.isDenied) {
      // Permission denied, show a custom dialog
      _showPermissionDialog();
    } else if (status.isPermanentlyDenied) {
      // Permission permanently denied, open app settings
      await openAppSettings();
    }
  }

  void _showPermissionDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Camera Permission Required'),
        content: Text(
            'This app needs camera access to take pictures. Please grant the permission in settings.'),
        actions: [
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop();
              await openAppSettings(); // Open settings if permission is permanently denied
            },
            child: Text('Open Settings'),
          ),
        ],
      ),
    );
  }
}
