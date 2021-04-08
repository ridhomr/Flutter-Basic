/**
 * Menggunakan Text sebagai root widget
 * Ditulis dalam class terpisah
 * Ditambah dengan penggunaan parameter
 * 
 * Parameter dapat ditambahkan ke dalam class yang
 * digunakan untuk membangun widget. nantinya saat
 * membuat instance dari class tersebut, maka harus
 * menyertakan argumen yang sesuai dengan parameter
 * yang didefinsikan.
 * 
 * Pada contoh ini, sebuah parameter bernama data
 * ditambahkan ke widget MyText. Caranya dengan
 * menambahkan field final dengan nama data, lalu
 * menginisialisasi nilainya di konstruktor. Nilai
 * tersebut lalu dapat digunakan di dalam function
 * build saat membangun struktur widget-nya.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyText('Hello world'),
  );
}

class MyText extends StatelessWidget {
  final String data;

  MyText(this.data);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textDirection: TextDirection.ltr,
    );
  }
}