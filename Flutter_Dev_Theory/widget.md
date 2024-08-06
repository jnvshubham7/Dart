In Flutter, a widget is the basic building block of the user interface. Everything in Flutter is a widget, including layout models, text, shapes, and animations. Widgets can be either stateful or stateless.

Here are examples of both types of widgets:

### StatelessWidget

A `StatelessWidget` is a widget that does not require mutable state. For example, a widget that displays a static text:

```dart
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
```

### StatefulWidget

A `StatefulWidget` is a widget that can change over time. For example, a widget that updates its text when a button is pressed:

```dart
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _displayText = 'Hello, Flutter!';

  void _updateText() {
    setState(() {
      _displayText = 'You pressed the button!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_displayText),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateText,
              child: Text('Press me'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyStatefulWidget(),
  ));
}
```

In these examples:

- The `StatelessWidget` does not change its content once it's rendered.
- The `StatefulWidget` can change its content when the state changes, demonstrated by pressing the button to update the text.

Widgets are arranged in a tree structure, called the widget tree, which describes the user interface's layout. This tree structure allows Flutter to efficiently rebuild and update the user interface.
