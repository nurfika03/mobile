import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  final String selectedField;
  final String title;
  final String imagePath;
  final String harga;
  final String jenisLapangan;

  CheckoutPage({
    required this.selectedField,
    required this.title,
    required this.imagePath,
    required this.harga,
    required this.jenisLapangan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lapangan Dipilih: $selectedField',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
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
                    'Nomor Lapangan: $selectedField',
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
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Detail Pembayaran',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Saldo: Rp. 500.000', // Ganti dengan saldo sesuai data yang ada
                  style: TextStyle(fontSize: 16),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle action when "Bayar Sekarang" is pressed
                    print('Pembayaran selesai');
                  },
                  child: Text('Bayar Sekarang'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
