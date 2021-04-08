import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Darwin Silalahi - 6 SIA 5'),
      ),
      body: ListView(children: <Widget>[
        Center(
            child: Text('Data Mahasiswa',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        DataTable(
          columns: [
            DataColumn(label: Text('NIRM')),
            DataColumn(label: Text('Nama Mahasiswa')),
            DataColumn(label: Text('Jurusan')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('2018020729')),
              DataCell(Text('Darwin Silalahi')),
              DataCell(Text('Sistem Informasi')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018020728')),
              DataCell(Text('Hans Siahaan')),
              DataCell(Text('English')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018097209')),
              DataCell(Text('Munte')),
              DataCell(Text('Broadcasting')),
            ]),
          ],
        ),
      ]),
    )