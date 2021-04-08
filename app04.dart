/**
 * Menggunakan MaterialApp sebagai root widget
 * 
 * Meskipun widget Text dan beberapa widget lainnya
 * dapat digunakan sebagai root widget, namun umumnya
 * aplikasi Flutter menggunakan widget MaterialApp
 * sebagai root-nya.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Hello World App',
    ),
  );
}