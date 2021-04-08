/**
 * Menambahkan widget FloatingActionButton
 * Menangani penekanan tombol dengan onPressed
 * Menampilkan pesan dengan SnackBar
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
        floatingActionButton: MyActionButton(),
      ),
    );
  }
}

class MyActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.star_outline),
      tooltip: 'Star it!',
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Star action button is pressed!'),
            duration: Duration(seconds: 2),
            action: SnackBarAction(
              label: 'Close',
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}