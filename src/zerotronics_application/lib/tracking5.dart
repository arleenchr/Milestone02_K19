// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:zerotronics_application/chat.dart';
import 'package:zerotronics_application/home.dart';

void main() {
  runApp(Tracking5());
}

class Tracking5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.center, children: <Widget>[
      Positioned(
          top: 45.0,
          left: 60.0,
          child: Text("Tracking",
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 30.0,
                  color: Color.fromARGB(255, 31, 22, 86),
                  fontWeight: FontWeight.w800))),

      // tombol back ke home:
      Positioned(
          top: 45.0,
          left: 5.0,
          child: Container(
              //color: Colors.green,
              child: IconButton(
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
          ))),

      // profil petugas:
      Positioned(
          top: 100.0,
          left: 10.0,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 92.0,
              width: 340.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.orange[600]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    leading: CircleAvatar(
                      radius: 20.0,
                    ),
                    title: Text("E-Teen",
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
            ),
          )),
      // tombol hubungi petugas:
      Positioned(
          top: 195.0,
          left: 10.0,
          child: SizedBox(
              height: 40.0,
              width: 340.0,
              child: new ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      side: BorderSide(width: 10.0, color: Colors.indigo)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HubungiPetugas()),
                    );
                  },
                  child: const Text("Hubungi Petugas",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800))))),
      // tracking:
      Positioned(
          top: 240.0,
          left: 10.0,
          child: Container(
              height: 150.0,
              width: 340.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.blue[50]),
              padding: const EdgeInsets.all(5.0),
              child: Align(
                  alignment: Alignment.center,
                  child: new RichText(
                      text: new TextSpan(
                          style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 12.0,
                              color: Color.fromARGB(255, 31, 22, 86),
                              height: 1.8),
                          children: <TextSpan>[
                        new TextSpan(text: "Konfirmasi pembuangan sampah.\n"),
                        new TextSpan(
                            text: "Petugas sedang menuju lokasi Anda.\n"),
                        new TextSpan(text: "Petugas sampai di lokasi Anda.\n"),
                        new TextSpan(
                            text:
                                "Petugas sedang menuju pusat pengelolaan sampah.\n"),
                        new TextSpan(
                            text:
                                "Petugas sampai di pusat pengelolaan sampah.\n"),
                        new TextSpan(
                            text: "Pembuangan sampah selesai!",
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                      ]))))),

      // tombol konfirmasi:
      Positioned(
          top: 590.0,
          left: 10.0,
          child: SizedBox(
              height: 40.0,
              width: 340.0,
              child: new ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      side: BorderSide(width: 10.0, color: Colors.green)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Konfirmasi'),
                            content:
                                Text('Pembuangan sampah Anda telah selesai!'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                  );
                                },
                              ),
                            ],
                          );
                        });
                  },
                  child: const Text("Selesai Buang Sampah",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800))))),
    ]));
  }
}
