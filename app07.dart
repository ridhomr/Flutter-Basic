/**
 * Menggunakan widget Scaffold dalam MaterialApp
 * 
 * Widget Scaffold menyediakan fitur-fitur umum yang
 * dimiliki sebuah aplikasi Material. Widget inilah
 * yang umum digunakan sebagai parameter home dari
 * widget MaterialApp.
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
      home: Scaffold(),
    );
  }
}