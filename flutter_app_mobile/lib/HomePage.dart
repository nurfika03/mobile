import 'package:flutter/material.dart';
import 'package:flutter_app_mobile/FavoritesScreen.dart';
import 'package:flutter_app_mobile/HomeScreen.dart';
import 'package:flutter_app_mobile/NotesScreen.dart';
import 'package:flutter_app_mobile/SettingsScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(), // Halaman Home
    NotesScreen(), // Halaman Notes
    FavoritesScreen(), // Halaman Favorites
    SettingsScreen(), // Halaman Settings
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.account_circle, color: Colors.black),
          onPressed: () {
            // Tambahkan logika ketika tombol profil ditekan
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              // Tambahkan logika ketika tombol notifikasi ditekan
            },
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Note',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
