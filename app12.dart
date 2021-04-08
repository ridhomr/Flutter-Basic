/**
 * Menggunakan widget Scaffold dalam MaterialApp
 * Lengkap dengan judul dan isinya
 * Menggunakan widget Row dan Icon
 * 
 * Widget Row merupakan widget yang serupa dengan widget
 * Column, namun memiliki orientasi mendatar. Widget ini
 * menggunakan sumbu mendatar sebagai sumbu utama (main
 * axis) dan sumbu tegak sebagai sumbu silang (cross axis).
 * Sama seperti widget Column, parameter mainAxisSize
 * digunakan untuk menentukan ukuran sumbu utama. Parameter
 * mainAxisAlignment untuk menentukan penataan item-itemnya
 * secara mendatar (sepanjang sumbu utamanya). Parameter
 * crossAxisAlignment untuk menentukan penataan item
 * secara tegak atau vertikal (sepanjang sumbu silangnya).
 * 
 * Widget Icon, sesuai namanya, digunakan untuk menampilkan
 * icon.
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
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.home),
            Icon(Icons.flight),
            Icon(Icons.train),
            Icon(Icons.tram),
          ],
        ),
      ),
    );
  }
}