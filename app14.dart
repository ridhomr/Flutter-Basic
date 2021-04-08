/**
 * Membuat layout aplikasi Flutter
 * Menggabungkan berbagai Widget
 * 
 * Pada program ini diperlihatkan contoh pembuatan
 * layout aplikasi dengan menyusun berbagai widget.
 * Konten aplikasi pada contoh ini dibentuk dengan
 * sebuah widget Column yang memiliki tiga anak,
 * sebuah Container berisi Row di bagian atas,
 * sebuah Expanded berisi Center di tengah, dan
 * sebuah Container berisi Text di bagian bawah.
 * 
 * Selain itu diperlihatkan juga cara mengubah format
 * tampilan widget Text menggunakan parameter style,
 * yang berupa sebuah objek TextStyle.
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Universitas Jenderal Achmad Yani Yogyakarta',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Icon(Icons.star_outline),
                  Icon(Icons.share),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Text('Article about Unjaya'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              child: Text('Copyright 2021, Choerun Asnawi'),
            ),
          ],
        ),
      ),
    );
  }
}