/**
 * Menambahkan widget FloatingActionButton
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
      title: 'Hello World App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Text('Using Floating Action Button'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.star_outline),
          tooltip: 'Star it!',
          onPressed: () {},
        ),
      ),
    );
  }
}