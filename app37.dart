/**
 * Membuat formulir dengan widget Form
 * 
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
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
          child: MyForm(),
        ),
      ),
    );
  }
}

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Name',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Address',
            ),
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.topRight,
            child: MyButton(
              icon: Icons.save,
              caption: 'Save',
            ),
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final IconData icon;
  final String caption;

  MyButton({this.icon, this.caption});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            SizedBox(width: 8),
            Text(caption),
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}