/**
 * Menggunakan class StatefulWidget
 * Mengirimkan data state ke child widget
 * 
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  ThemeData _theme = ThemeData.light();

  void _switchTheme() {
    setState(() {
      _theme = _theme == ThemeData.light()
        ? ThemeData.dark()
        : ThemeData.light();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      theme: _theme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: MyHomePage(theme: _theme),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            _theme == ThemeData.light()
              ? Icons.toggle_off
              : Icons.toggle_on
          ),
          onPressed: _switchTheme,
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final ThemeData theme;

  MyHomePage({this.theme});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Using StatefulWidget'),
          SizedBox(height: 16),
          Icon(
            theme == ThemeData.light()
              ? Icons.wb_sunny_outlined
              : Icons.nights_stay,
            size: 96,
          ),
        ],
      ),
    );
  }
}