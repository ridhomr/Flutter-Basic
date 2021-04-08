/**
 * Menggunakan widget Scaffold dalam MaterialApp
 * Lengkap dengan judul dan isinya
 * 
 * Widget Scaffold memiliki parameter appBar untuk
 * menampilkan sebuah widget AppBar (papan aplikasi)
 * di bagian atas. Di sini bisa diisi dengan judul
 * tampilan halaman, menggunakan parameter title.
 * Parameter title ini berisi sebuah widget, jadi
 * bisa saja tidak berupa tulisan (widget Text),
 * tapi bisa berupa widget visual lainnya.
 * 
 * Selain itu, widget Scaffold juga punya parameter
 * body, yang berisi widget untuk mengisi tubuh
 * dari Scaffold. Di sinilah konten dari aplikasi
 * diletakkan. Pada contoh ini, parameter body
 * diisi dengan sebuah widget Text.
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
        body: Text('This is the homepage'),
      ),
    );
  }
}