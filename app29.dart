/**
 * Menggunakan widget BottomNavigationBar
 * Dibangun dari List berisi data tombol
 * Menangani penekanan tombol
 * 
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
          child: Text('Using BottomNavigationBar'),
        ),
        bottomNavigationBar: MyNavigationBar(),
      ),
    );
  }
}

class NavItemData {
  final IconData icon;
  final String label;

  NavItemData({this.icon, this.label});
}

class MyNavigationBar extends StatelessWidget {
  final _navData = <NavItemData>[
    NavItemData(icon: Icons.home, label: 'Home'),
    NavItemData(icon: Icons.account_circle, label: 'Profile'),
    NavItemData(icon: Icons.settings, label: 'Settings'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _navData.map((NavItemData item) {
        return BottomNavigationBarItem(
          icon: Icon(item.icon),
          label: item.label,
        );
      }).toList(),
      onTap: (int index) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(_navData[index].label),
              content: Icon(
                _navData[index].icon,
                size: 96,
              ),
            );
          },
        );
      },
    );
  }
}