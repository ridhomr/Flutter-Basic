/**
 * Menggunakan MaterialApp sebagai root widget
 * Ditulis dalam class terpisah
 * 
 * Penjelasan awalnya bisa dilihat pada app02.dart
 * 
 * Tampilan yang paling terlihat adalah keberadaan
 * banner bertuliskan "DEBUG" di bagian kanan atas.
 * Banner ini digunakan untuk mengindikasikan bahwa
 * aplikasi sedang berjalan di dalam check mode.
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
    );
  }
}