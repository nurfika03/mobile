import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app_mobile/registrasi.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2), // Tampilkan splash screen selama 2 detik
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => RegistrationPage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/bola.jpg', // Ganti dengan path/logo yang sesuai
          width: 250.0, // Sesuaikan dengan ukuran logo Anda
          height: 300.0,
        ),
      ),
    );
  }
}
