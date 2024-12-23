import 'package:flutter/material.dart';
import 'package:flutter_app_mobile/DetailPage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Kamu pengen main futsal dimana?',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari tempat futsal...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Lapangan Terdekat',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildFutsalFieldItem(
                    context,
                    'My Futsal Bastiong',
                    'assets/futsal1.jpg',
                    '2 lapangan',
                    'Rp. 150.000',
                    'Rumput',
                    'Bastiong, Ternate Selatan',
                    'My Futsal Bastiong'),
                buildFutsalFieldItem(
                    context,
                    'Neo Futsal',
                    'assets/futsal2.jpg',
                    '2 lapangan',
                    'Rp. 170.000',
                    'Rumput',
                    'Jalan Raya Bastiong, Ternate Selatan',
                    'Neo Futsal'),
                buildFutsalFieldItem(
                    context,
                    'Futsal Dufa-dufa',
                    'assets/futsal3.jpg',
                    '2 lapangan',
                    'Rp. 180.000',
                    'Rumput',
                    'Dufa-dufa, Ternate Selatan',
                    'Futsal Dufa-Dufa'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFutsalFieldItem(
    BuildContext context,
    String title,
    String imagePath,
    String jumlahLapangan,
    String harga,
    String jenisLapangan,
    String lokasi,
    String selectedVenue, // Tambahkan parameter selectedVenue
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              title: title,
              imagePath: imagePath,
              jumlahLapangan: jumlahLapangan,
              harga: harga,
              jenisLapangan: jenisLapangan,
              lokasi: lokasi,
              selectedVenue: selectedVenue, // Sertakan nilai selectedVenue
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        width: 150,
        child: Column(
          children: [
            Container(
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
