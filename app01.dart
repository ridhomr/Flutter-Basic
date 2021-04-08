/**
 * Menggunakan Text sebagai root widget
 * 
 * Diawali dengan meng-import package material
 * yang disediakan oleh Flutter SDK. Package tsb
 * salah satunya menyediakan sebuah function
 * bernama runApp yang harus dipanggil di dalam
 * function main untuk memulai aplikasi Flutter.
 * 
 * Function runApp membutuhkan sebuah argumen
 * berupa sebuah widget yang akan dipakai sebagai
 * root widget dalam hirarki widget yang membangun
 * struktur UI dari aplikasi Flutter.
 *  
 * Program ini menggunakan widget Text sebagai root.
 * Widget Text jika dipakai di luar MaterialApp,
 * maka wajib menggunakan parameter textDirection.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    Text(
      'Hello world',
      textDirection: TextDirection.ltr,
    ),
  );
}