import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(PriceList());
}

List<String> namaItem = [
  'Peralatan Rumah Tangga Besar',
  'Peralatan Rumah Tangga Kecil',
  'Peralatan Elektronik',
  'Alat Penerangan',
  'Baterai'
];
List<int> pointItem = [1000, 200, 500, 100, 100];

class PriceList extends StatefulWidget {
  @override
  State<PriceList> createState() => _MyAppState();
}

class _MyAppState extends State<PriceList> {
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
          leading: IconButton(
            icon: Icon(
              IconData(0xe092,
                  fontFamily: 'MaterialIcons', matchTextDirection: true),
              color: Color.fromARGB(255, 31, 22, 86),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
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

class priceItem extends StatefulWidget {
  final String item;
  final int point;

  priceItem({required this.item, required this.point});

  @override
  State<priceItem> createState() => _priceItemState();
}

class _priceItemState extends State<priceItem> {
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
                "${widget.point} point",
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
                "${widget.item}",
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
