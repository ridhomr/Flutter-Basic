/**
 * Menambahkan actions berupa IconButton di AppBar
 * Membangun IconButton dengan widget Builder
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
          actions: [
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(Icons.star_outline),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Star button is pressed'),
                        duration: Duration(milliseconds: 500),
                      ),
                    );
                  },
                );
              },
            ),
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Share button is pressed'),
                        duration: Duration(milliseconds: 500),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: Center(
          child: Text('Actions at AppBar'),
        ),
      ),
    );
  }
}