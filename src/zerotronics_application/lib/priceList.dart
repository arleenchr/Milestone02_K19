import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

List<String> namaItem = [
  'Peralatan Rumah Tangga Besar',
  'Peralatan Rumah Tangga Kecil',
  'Peralatan Elektronik',
  'Alat Penerangan',
  'Baterai'
];
List<int> pointItem = [1000, 200, 500, 100, 100];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 120,
          title: Text(
            "Price List",
            style: TextStyle(
                color: Color(0xFF1F1656),
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w800,
                fontSize: 40),
          ),
          leading: BackButton(
            color: Color(0xFF1F1656),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return priceItem(item: namaItem[index], point: pointItem[index]);
          },
        ),
      ),
    );
  }
}

class priceItem extends StatelessWidget {
  final String item;
  final int point;

  priceItem({this.item, this.point});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 20, left: 35, right: 35),
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xFFEDC804),
            ),
            child: Container(
              margin: EdgeInsets.only(bottom: 3),
              alignment: Alignment.bottomCenter,
              child: Text(
                "${point} point",
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1F1656),
                    fontSize: 15),
              ),
            )),
        Container(
            margin: EdgeInsets.only(top: 20, left: 35, right: 35),
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Color(0xFFFF9901),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "${item}",
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1F1656),
                    fontSize: 20),
              ),
            )),
      ],
    );
  }
}
