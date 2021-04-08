/**
 * Membuat formulir dengan widget Form
 * Mengakses state Form dengan GlobalKey
 * Memvalidasi data input di Form
 * 
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Demo App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Demo'),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          child: MyForm(formKey: _formKey),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          onPressed: () {
            _formKey.currentState.validate();
          },
        ),
      ),
    );
  }
}

class MyForm extends StatelessWidget {
  final Key formKey;
  
  MyForm({this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Name',
            ),
            validator: (str) {
              if (str.isEmpty) {
                return 'Name cannot be empty';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Address',
            ),
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
        ],
      ),
    );
  }
}