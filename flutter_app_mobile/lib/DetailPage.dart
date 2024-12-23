import 'package:flutter/material.dart';
import 'package:flutter_app_mobile/BookingPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String imagePath;
  final String jumlahLapangan;
  final String harga;
  final String jenisLapangan;
  final String lokasi;
  final String selectedVenue;

  DetailPage({
    required this.title,
    required this.imagePath,
    required this.jumlahLapangan,
    required this.harga,
    required this.jenisLapangan,
    required this.lokasi,
    required this.selectedVenue,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              saveToFavorite(context); // Pass context to the function
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jumlah Lapangan: $jumlahLapangan',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Harga/Jam: $harga',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Jenis Lapangan: $jenisLapangan',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Lokasi: $lokasi',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Booking',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        BookingPage(selectedVenue: selectedVenue),
                  ),
                );
              },
              child: Text(
                'Booking Sekarang',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void saveToFavorite(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? favorites = prefs.getStringList('favorites') ?? [];
    if (!favorites.contains(selectedVenue)) {
      favorites.add(selectedVenue);
      prefs.setStringList('favorites', favorites);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Tempat futsal ditambahkan ke favorit'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Tempat futsal sudah ada di favorit'),
        ),
      );
    }
  }
}
