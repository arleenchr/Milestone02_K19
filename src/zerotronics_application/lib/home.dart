// ignore_for_file: unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zerotronics_application/bantuan.dart';
import 'package:zerotronics_application/buangSampah.dart';
import 'package:zerotronics_application/chat.dart';
import 'package:zerotronics_application/klasifikasi.dart';
import 'package:zerotronics_application/priceList.dart';
import 'package:zerotronics_application/profile.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.center, children: <Widget>[
      Positioned(
          top: 45.0,
          left: 60.0,
          child: Text("Home",
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 30.0,
                  color: Color.fromARGB(255, 31, 22, 86),
                  fontWeight: FontWeight.w800))),
      // tombol HubungiPetugas:
      Positioned(
          top: 45.0,
          left: 300.0,
          child: Container(
              //color: Colors.green,
              child: IconButton(
            icon: Icon(
              IconData(0xf1c6,
                  fontFamily: 'MaterialIcons', matchTextDirection: true),
              color: Color.fromARGB(255, 31, 22, 86),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HubungiPetugas()),
              );
            },
          ))),
      // profile:
      Positioned(
          top: 125.0,
          left: 10.0,
          child: Align(
              alignment: Alignment.center,
              child: Container(
                  height: 92.0,
                  width: 340.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.orange),
                  child: SizedBox(
                      height: 40.0,
                      width: 340.0,
                      child: new ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            side:
                                BorderSide(width: 20.0, color: Colors.orange)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()),
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            ListTile(
                              contentPadding: EdgeInsets.all(10.0),
                              leading: CircleAvatar(
                                radius: 20.0,
                              ),
                              title: Text("User",
                                  style: TextStyle(
                                      fontFamily: "Nunito",
                                      fontSize: 25.0,
                                      color: Color.fromARGB(255, 31, 22, 86),
                                      fontWeight: FontWeight.w800)),
                              subtitle: Text(
                                "+62 8XXXXXXXXXX",
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 14.0,
                                    color: Color.fromARGB(255, 31, 22, 86)),
                              ),
                            ),
                          ],
                        ),
                      ))))),
      // saldo reward point:
      Positioned(
          top: 125.0,
          left: 245.0,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 92.0,
              width: 105.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.yellowAccent[700]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    title: Text("Reward",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 18.0,
                            color: Color.fromARGB(255, 31, 22, 86),
                            fontWeight: FontWeight.w800)),
                    subtitle: Text(
                      "0 Points",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 10.0,
                          color: Color.fromARGB(255, 31, 22, 86)),
                    ),
                  ),
                ],
              ),
            ),
          )),
      // buang sampah:
      Positioned(
          top: 260.0,
          left: 10.0,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 110.0,
              width: 340.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.orange),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    title: Text(
                        "Anda punya sampah\nelektronik?\nBuang di sini!",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 31, 22, 86),
                            fontWeight: FontWeight.w800)),
                  ),
                ],
              ),
            ),
          )),
      // tombol buang sampah:
      Positioned(
          top: 360.0,
          left: 10.0,
          child: SizedBox(
              height: 40.0,
              width: 340.0,
              child: new ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 31, 22, 86),
                      side: BorderSide(
                          width: 10.0, color: Color.fromARGB(255, 31, 22, 86))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BuangSampah()),
                    );
                  },
                  child: const Text("Buang Sampah",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800))))),
      // gambar icon tong sampah:
      Positioned(
        top: 270.0,
        left: 250.0,
        child: Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: const Image(
            fit: BoxFit.cover,
            image: AssetImage('assets/tongsampah.png'),
          ),
        ),
      ),

      // tombol klasifikasi:
      Positioned(
          top: 450.0,
          left: 10.0,
          child: SizedBox(
              height: 40.0,
              width: 340.0,
              child: new ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 31, 22, 86),
                      side: BorderSide(
                          width: 10.0, color: Color.fromARGB(255, 31, 22, 86))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Klasifikasi()),
                    );
                  },
                  child: const Text("Info Klasifikasi E-Waste",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800))))),

      // tombol price list:
      Positioned(
          top: 500.0,
          left: 10.0,
          child: SizedBox(
              height: 40.0,
              width: 340.0,
              child: new ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 31, 22, 86),
                      side: BorderSide(
                          width: 10.0, color: Color.fromARGB(255, 31, 22, 86))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PriceList()),
                    );
                  },
                  child: const Text("Price List",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800))))),

      // tombol bantuan:
      Positioned(
          top: 600.0,
          left: 10.0,
          child: SizedBox(
              height: 40.0,
              width: 340.0,
              child: TextButton(
                style: TextButton.styleFrom(
                    textStyle: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 15.0,
                        color: Color.fromARGB(255, 31, 22, 86),
                        fontWeight: FontWeight.w800)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bantuan()),
                  );
                },
                child: const Text("Bantuan",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 14.0,
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 31, 22, 86),
                        fontWeight: FontWeight.w800)),
              )
              //child: new ElevatedButton(
              //    style: ElevatedButton.styleFrom(
              //        primary: Colors.indigo.withOpacity(0),
              //        side: BorderSide(
              //            width: 10.0, color: Colors.indigo.withOpacity(0))),
              //    onPressed: () {
              //      Navigator.push(
              //        context,
              //        MaterialPageRoute(builder: (context) => Bantuan()),
              //      );
              //    },
              //    child: const Text("Bantuan",
              //        style: TextStyle(
              //            fontFamily: "Nunito",
              //            fontSize: 15.0,
              //            color: Color.fromARGB(255, 31, 22, 86),
              //            fontWeight: FontWeight.w800,
              //            decoration: TextDecoration.underline)))
              )),
    ]));
  }
}
