/**
 * Menggunakan Text sebagai root widget
 * Ditulis dalam class terpisah
 * 
 * Hirarki widget dapat ditulis ke dalam class
 * terpisah, yang merupakan turunan dari class
 * StatelessWidget. Class ini harus meng-override
 * metode build untuk membangun struktur widgetnya.
 * 
 * Setelah class itu dibuat, maka instance-nya
 * dapat digunakan sebagai argumen dari function
 * runApp yang dipanggil di function main.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyText(),
  );
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello world',
      textDirection: TextDirection.ltr,
    );
  }
}