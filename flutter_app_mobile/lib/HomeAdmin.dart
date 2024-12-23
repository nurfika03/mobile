import 'package:flutter/material.dart';
import 'package:flutter_app_mobile/DashboardAdmin.dart';
import 'package:flutter_app_mobile/KelolaKeuangan.dart';
import 'package:flutter_app_mobile/KelolaLapangan.dart';
import 'package:flutter_app_mobile/ProfilAdmin.dart';

class AdminHomePage extends StatefulWidget {
  @override
  _AdminHomePageState createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int _currentIndex = 0;

  // Tambahkan halaman-halaman admin ke dalam daftar
  final List<Widget> _pages = [
    AdminDashboard(), // Halaman Dashboard Admin
    KelolaKeuanganPage(), // Halaman Kelola Keuangan
    KelolaLapanganPage(), // Halaman Kelola Lapangan
    AdminProfilePage(), // Halaman Profil Admin
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Admin Home',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.admin_panel_settings, color: Colors.black),
          onPressed: () {
            // Logika tambahan jika diperlukan
          },
        ),
      ),
      // Gunakan daftar halaman sesuai index
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
