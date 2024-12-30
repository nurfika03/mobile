import 'package:flutter/material.dart';
import 'package:flutter_app_mobile/HomeAdmin.dart';
// import 'package:flutter_app_mobile/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Futsal',
      home: AdminHomePage(), // Tetapkan salah satu halaman sebagai home
    );
  }
}
