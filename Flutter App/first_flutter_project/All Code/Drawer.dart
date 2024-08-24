import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Example'),
        ),
        drawer: Drawer(
          width: 300,
          backgroundColor: Colors.blueGrey,
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    // Image(image: image, width: 100, height: 100,),
                    Text(
                      'Google',
                      style: TextStyle(fontSize: 24, color: Colors.red),
                    ),
                    Text(
                      'Google Search',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Navigator.pop(context);
                  Logger().i('Item 1 are clicked');
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Navigator.pop(context);
                  Logger().i('Item 2 are clicked');
                },
              ),
              ListTile(
                title: Text('Item 3'),
                onTap: () {
                  // Navigator.pop(context);
                  Logger().i('Item 3 are clicked');
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('Drawer Example'),
        ),
      ),
    );
  }
}
