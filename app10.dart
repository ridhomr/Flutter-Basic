/**
 * Menggunakan widget Scaffold dalam MaterialApp
 * Lengkap dengan judul dan isinya
 * Menggunakan widget Container
 * 
 * Pada program berikut, widget Text yang menjadi konten
 * dari widget Scaffold, "dibungkus" dulu dengan 2 widget
 * Container, sebelum dimasukkan ke dalam widget Center.
 * Widget Container ini digunakan jika ingin menambahkan
 * padding, margin maupun dekorasi berupa border (garis
 * tepi) dan warna latar.
 * 
 * Seperti halnya widget Center, widget Container juga
 * menggunakan parameter child untuk menyebutkan widget
 * isinya. Widget Container bisa berisi widget Container
 * lainnya.
 * 
 * Pada program ini, widget Container bagian luar berwarna
 * hijau dan bergaris tepi melengkung berwarna merah. Di
 * dalamnya ada widget Container yang berwarna kuning,
 * memiliki margin sebesar 8 pixel di semua sisinya, serta
 * padding sebesar 8 pixel di sisi atas dan bawah (sumbu
 * vertikal) dan 16 pixel di sisi kiri dan kanan (sumbu
 * horisontal).
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
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(
                color: Colors.red,
                width: 8,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Container(
              color: Colors.yellow,
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text('This is the homepage'),
            ),
          ),
        ),
      ),
    );
  }
}