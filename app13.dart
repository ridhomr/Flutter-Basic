/**
 * Menggunakan widget Scaffold dalam MaterialApp
 * Lengkap dengan judul dan isinya
 * Menggunakan widget Expanded
 * 
 * Item di dalam sebuah widget Column atau Row dapat
 * direntangkan ukurannya untuk memenuhi ruangan yang
 * ada sepanjang sumbu utama dengan membungkusnya di
 * dalam widget Expanded. Item lainnya akan dipaksa
 * untuk mengecilkan dirinya dan memberi ruang bagi
 * item yang dibungkus widget Expanded ini.
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing '
                'elit. Ut fermentum iaculis nisl, eget vehicula massa '
                'porta id. Etiam eros neque, varius id quam commodo, '
                'ultricies eleifend orci. Sed et mattis quam. Interdum '
                'et malesuada fames ac ante ipsum primis in faucibus. '
                'Pellentesque elementum arcu id tellus scelerisque, '
                'non viverra enim maximus. Vivamus quis vestibulum sem. '
                'Praesent ornare orci mauris, ac fringilla quam '
                'vestibulum eu. Vivamus dictum non quam nec pharetra',
              ),
            ),
            Icon(Icons.thumb_up),
          ],
        ),
      ),
    );
  }
}