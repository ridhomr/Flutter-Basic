/**
 * Menggunakan widget Scaffold dalam MaterialApp
 * Lengkap dengan judul dan isinya
 * Menengahkan konten dengan widget Center
 * 
 * Pada program berikut, widget Text yang menjadi konten
 * dari widget Scaffold, "dibungkus" dengan sebuah widget
 * Center. Widget Center memaksa widget di atasnya untuk 
 * memenuhi ruang yang ada, lalu memposisikan isinya di
 * tengah-tengah, baik secara horisontal maupun vertikal.
 * 
 * Widget Center dan sejenisnya menggunakan parameter
 * child untuk menempatkan widget lain sebagai isinya.
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
          child: Text('This is the homepage'),
        ),
      ),
    );
  }
}