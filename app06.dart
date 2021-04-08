/**
 * Menggunakan MaterialApp sebagai root widget
 * Ditulis dalam class terpisah
 * Ditambah widget Text sebagai isinya
 * Dihilangkan banner DEBUG-nya
 * 
 * Selain parameter title, widget MaterialApp juga
 * memiliki parameter debugShowCheckedModeBanner dan
 * home. Parameter debugShowCheckedModeBanner berupa
 * nilai boolean, yang menentukan apakah banner DEBUG
 * terlihat atau tidak. Parameter home berisi widget
 * visual yang mengisi tampilan beranda dari aplikasi.
 * 
 * Pada contoh ini, digunakan sebuah widget Text
 * untuk mengisi tampilan MaterialApp. Jika ditulis
 * di dalam MaterialApp, maka widget Text tidak
 * membutuhkan parameter textDirection lagi, karena
 * hal itu sudah ditangani langsung oleh MaterialApp.
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
      home: Text('Hello world'),
    );
  }
}