/**
 * Menggunakan class StatefulWidget
 * Mengirimkan sinyal pengubahan state ke parent widget
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
        floatingActionButton: MyActionButton(
          theme: _theme,
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

class MyActionButton extends StatelessWidget {
  final ThemeData theme;
  final VoidCallback onPressed;

  MyActionButton({this.theme, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(
        theme == ThemeData.light()
          ? Icons.toggle_off
          : Icons.toggle_on
      ),
      onPressed: onPressed,
    );
  }
}