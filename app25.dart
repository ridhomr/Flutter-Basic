/**
 * Kustomisasi tema bawaan
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
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green[900],
        scaffoldBackgroundColor: Colors.green[700],
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Text(
            'Using Theme',
            style: Theme.of(context).textTheme.headline4.copyWith(
              color: Color(0xFF99FF99),
            ),
          ),
        ),
      ),
    );
  }
}