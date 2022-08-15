import 'package:flutter/material.dart';

void main() {
  runApp(Klasifikasi());
}

List<String> namaItem = [
  'Peralatan Rumah Tangga Besar',
  'Peralatan Rumah Tangga Kecil',
  'Peralatan Elektronik',
  'Alat Penerangan',
  'Baterai',
];
List<String> descriptionItem = [
  'lemari es/freezer, mesin cuci, mesin pencuci piring',
  'pemanggang roti, pembuat kopi, setrika, pengering rambut',
  'komputer pribadi, telepon, ponsel, laptop, printer, pemindai',
  'lampu tidur, lampu bohlam, berbagai jenis senter, beragam jenis baterai, dll.',
  'mesin pelempar bola otomatis, mobil remote control, dll.',
];

class Klasifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 90,
          title: Text(
            "Klasifikasi E-Waste",
            style: TextStyle(
                color: Color(0xFF1F1656),
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w800,
                fontSize: 28.0),
          ),
          leading: BackButton(
            color: Color(0xFF1F1656),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: descriptionItem.length + 1,
          itemBuilder: (context, index) {
            return descItem(
                namaItem: namaItem[index],
                descriptionItem: descriptionItem[index]);
          },
        ),
      ),
    );
  }
}

class descItem extends StatelessWidget {
  final String namaItem;
  final String descriptionItem;

  descItem({required this.namaItem, required this.descriptionItem});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 20, left: 35, right: 35),
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xFFEDC804),
            ),
            child: Container(
              margin: EdgeInsets.only(bottom: 3),
              alignment: Alignment.bottomCenter,
              child: Text(
                "${descriptionItem}",
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1F1656),
                    fontSize: 10),
              ),
            )),
        Container(
            margin: EdgeInsets.only(top: 20, left: 35, right: 35),
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Color(0xFFFF9901),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "${namaItem}",
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1F1656),
                    fontSize: 16),
              ),
            )),
      ],
    );
  }
}
