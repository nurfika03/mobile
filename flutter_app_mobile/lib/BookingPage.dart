import 'package:flutter/material.dart';
import 'package:flutter_app_mobile/CheckoutPage.dart';

class BookingPage extends StatefulWidget {
  final String selectedVenue;

  BookingPage({required this.selectedVenue});

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  String selectedField = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Pilih Lapangan', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                if (widget.selectedVenue == 'My Futsal Bastiong')
                  Expanded(
                    child: _buildFieldCard(
                      context,
                      'My Futsal Bastiong - Lapangan 1',
                      'assets/lapangan1.jpg',
                    ),
                  ),
                if (widget.selectedVenue == 'My Futsal Bastiong')
                  SizedBox(width: 16),
                if (widget.selectedVenue == 'My Futsal Bastiong')
                  Expanded(
                    child: _buildFieldCard(
                      context,
                      'My Futsal Bastiong - Lapangan 2',
                      'assets/lapangan2.jpg',
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                if (widget.selectedVenue == 'Neo Futsal')
                  Expanded(
                    child: _buildFieldCard(
                      context,
                      'Neo Futsal - Lapangan 1',
                      'assets/lapangan1.jpg',
                    ),
                  ),
                if (widget.selectedVenue == 'Neo Futsal') SizedBox(width: 16),
                if (widget.selectedVenue == 'Neo Futsal')
                  Expanded(
                    child: _buildFieldCard(
                      context,
                      'Neo Futsal - Lapangan 2',
                      'assets/lapangan2.jpg',
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                if (widget.selectedVenue == 'Futsal Dufa-Dufa')
                  Expanded(
                    child: _buildFieldCard(
                      context,
                      'Futsal Dufa-Dufa - Lapangan 1',
                      'assets/lapangan1.jpg',
                    ),
                  ),
                if (widget.selectedVenue == 'Futsal Dufa-Dufa')
                  SizedBox(width: 16),
                if (widget.selectedVenue == 'Futsal Dufa-Dufa')
                  Expanded(
                    child: _buildFieldCard(
                      context,
                      'Futsal Dufa-Dufa - Lapangan 2',
                      'assets/lapangan2.jpg',
                    ),
                  ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: selectedField.isNotEmpty
                ? () {
                    String title = '';
                    String imagePath = '';
                    String harga = '';
                    String jenisLapangan = '';

                    switch (widget.selectedVenue) {
                      case 'My Futsal Bastiong':
                        title = 'My Futsal Bastiong';
                        break;
                      case 'Neo Futsal':
                        title = 'Neo Futsal';
                        break;
                      case 'Futsal Dufa-Dufa':
                        title = 'Futsal Dufa-Dufa';
                        break;
                    }

                    switch (selectedField) {
                      case 'My Futsal Bastiong - Lapangan 1':
                        imagePath = 'assets/lapangan1.jpg';
                        harga = 'Rp. 150.000';
                        jenisLapangan = 'Rumput';
                        break;
                      case 'My Futsal Bastiong - Lapangan 2':
                        imagePath = 'assets/lapangan2.jpg';
                        harga = 'Rp. 150.000';
                        jenisLapangan = 'Sintetis';
                        break;
                      case 'Neo Futsal - Lapangan 1':
                        imagePath = 'assets/lapangan1.jpg';
                        harga = 'Rp. 170.000';
                        jenisLapangan = 'Rumput';
                        break;
                      case 'Neo Futsal - Lapangan 2':
                        imagePath = 'assets/lapangan2.jpg';
                        harga = 'Rp. 170.000';
                        jenisLapangan = 'Sintetis';
                        break;
                      case 'Futsal Dufa-Dufa - Lapangan 1':
                        imagePath = 'assets/lapangan1.jpg';
                        harga = 'Rp. 180.000';
                        jenisLapangan = 'Rumput';
                        break;
                      case 'Futsal Dufa-Dufa - Lapangan 2':
                        imagePath = 'assets/lapangan2.jpg';
                        harga = 'Rp. 180.000';
                        jenisLapangan = 'Sintetis';
                        break;
                    }

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckoutPage(
                          selectedField: selectedField,
                          title: title,
                          imagePath: imagePath,
                          harga: harga,
                          jenisLapangan: jenisLapangan,
                        ),
                      ),
                    );
                  }
                : null,
            child: Text(
              'Lanjutkan',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFieldCard(BuildContext context, String title, String imagePath) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedField = title;
        });
      },
      child: Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain, // Menggunakan BoxFit.contain
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
