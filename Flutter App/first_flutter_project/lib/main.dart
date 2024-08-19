import 'package:flutter/material.dart';




void main() {
  runApp(MaterialApp(
    home: ValidationDemo(),
  ));
}

class ValidationDemo extends StatefulWidget {
  @override
  _ValidationDemoState createState() => _ValidationDemoState();
}

class _ValidationDemoState extends State<ValidationDemo> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) => _name = value,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || !value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                onSaved: (value) => _email = value,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print('Form submitted');
                  } else {
                    print('Form is not valid');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}