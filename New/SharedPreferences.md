`SharedPreferences` in Flutter is a key-value store for storing small amounts of persistent data, such as user preferences or settings. It's simple to use and is often used for things like saving user settings, authentication tokens, or other small bits of data that need to persist between app launches.

### Basic Usage of SharedPreferences

Here's how you can use `SharedPreferences` in Flutter:

#### 1. **Add the Dependency**

First, add the `shared_preferences` package to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.0.15  # Check for the latest version
```

Run `flutter pub get` to install the package.

#### 2. **Import the Package**

Import `shared_preferences` in your Dart file:

```dart
import 'package:shared_preferences/shared_preferences.dart';
```

#### 3. **Saving Data**

You can save data using various methods depending on the type of data you want to store:

- **Saving a String:**

  ```dart
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('key', 'value');
  ```
- **Saving an Integer:**

  ```dart
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt('key', 123);
  ```
- **Saving a Boolean:**

  ```dart
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('key', true);
  ```
- **Saving a Double:**

  ```dart
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setDouble('key', 1.5);
  ```
- **Saving a List of Strings:**

  ```dart
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setStringList('key', ['value1', 'value2']);
  ```

#### 4. **Retrieving Data**

You can retrieve the saved data using the corresponding `get` method:

- **Retrieve a String:**

  ```dart
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? value = prefs.getString('key');
  ```
- **Retrieve an Integer:**

  ```dart
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int? value = prefs.getInt('key');
  ```
- **Retrieve a Boolean:**

  ```dart
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? value = prefs.getBool('key');
  ```
- **Retrieve a Double:**

  ```dart
  SharedPreferences prefs = await SharedPreferences.getInstance();
  double? value = prefs.getDouble('key');
  ```
- **Retrieve a List of Strings:**

  ```dart
  SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String>? value = prefs.getStringList('key');
  ```

#### 5. **Removing Data**

You can remove a specific value or clear all values:

- **Remove a specific value:**

  ```dart
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('key');
  ```
- **Clear all values:**

  ```dart
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  ```

#### Example

Here’s a complete example:

```dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SharedPreferencesExample(),
    );
  }
}

class SharedPreferencesExample extends StatefulWidget {
  @override
  _SharedPreferencesExampleState createState() => _SharedPreferencesExampleState();
}

class _SharedPreferencesExampleState extends State<SharedPreferencesExample> {
  String _storedValue = '';

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  _loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _storedValue = prefs.getString('key') ?? 'No value saved';
    });
  }

  _saveData(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('key', value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SharedPreferences Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Stored Value: $_storedValue'),
            TextField(
              onSubmitted: (value) {
                _saveData(value);
                _loadSavedData();
              },
              decoration: InputDecoration(hintText: 'Enter value to store'),
            ),
          ],
        ),
      ),
    );
  }
}
```

This simple app allows you to save a string value using `SharedPreferences` and display it on the screen.
