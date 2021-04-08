/**
 * Menggunakan widget Scaffold dalam MaterialApp
 * Lengkap dengan judul dan isinya
 * Menggunakan widget Column
 * 
 * Flutter menyediakan beberapa widget untuk menata
 * beberapa widget sekaligus. Untuk menata widget secara
 * vertikal dari atas ke bawah, digunakan widget Column.
 * Widget semacam ini menggunakan parameter children
 * yang berisi list widget yang menjadi isinya.
 * 
 * Widget Column menggunakan sumbu tegak sebagai sumbu
 * utama (main axis) dan sumbu mendatar sebagai sumbu
 * silang (cross axis). Item-item di dalamnya dapat
 * ditata menggunakan prinsip flexible box (flexbox).
 * Parameter mainAxisSize digunakan untuk menentukan
 * ukuran sumbu utama. Parameter mainAxisAlignment
 * untuk menentukan penataan item-itemnya secara
 * vertikal (sepanjang sumbu utamanya). Parameter
 * crossAxisAlignment untuk menentukan penataan item
 * secara horisontal (sepanjang sumbu silangnya).
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('This is the homepage'),
            Text('This homepage is very simple'),
            Text('It only contains few texts'),
          ],
        ),
      ),
    );
  }
}