import 'package:flutter/material.dart';

class KelolaKeuanganPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Halaman Kelola Keuangan',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'LAPORAN KEUANGAN',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  DataTable(
                    columnSpacing: 12,
                    columns: const [
                      DataColumn(
                        label: Text(
                          'No',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Jumlah Lapangan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Harga',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                    rows: const [
                      DataRow(
                        cells: [
                          DataCell(Text('1')),
                          DataCell(Text('5')),
                          DataCell(Text('Rp 100,000')),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
