// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:zerotronics_tracking/home.dart';
import 'package:zerotronics_tracking/hubungipetugas.dart';
import 'dart:async';

import 'package:zerotronics_tracking/tracking2.dart';
import 'package:zerotronics_tracking/tracking3.dart';

void main() {
  runApp(Tracking5());
}

class Tracking5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tracking'),
        ),
        body: Stack(alignment: Alignment.center, children: <Widget>[
          // profil petugas:
          Positioned(
              top: 5.0,
              left: 10.0,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100.0,
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
                          radius: 25.0,
                        ),
                        title: Text("E-Teen",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold)),
                        subtitle: Text(
                          "+62 8XXXXXXXXXX",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          // tombol hubungi petugas:
          Positioned(
              top: 115.0,
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
                          MaterialPageRoute(
                              builder: (context) => HubungiPetugas()),
                        );
                      },
                      child: const Text("Hubungi Petugas")))),
          // tracking:
          Positioned(
              top: 160.0,
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
                              style: new TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                height: 1.8,
                              ),
                              children: <TextSpan>[
                            new TextSpan(
                                text: "Konfirmasi pembuangan sampah.\n"),
                            new TextSpan(
                              text: "Petugas sedang menuju lokasi Anda.\n",
                            ),
                            new TextSpan(
                                text: "Petugas sampai di lokasi Anda.\n"),
                            new TextSpan(
                                text:
                                    "Petugas sedang menuju pusat pengelolaan sampah.\n"),
                            new TextSpan(
                                text:
                                    "Petugas sampai di pusat pengelolaan sampah.\n"),
                            new TextSpan(
                                text: "Pembuangan sampah selesai!",
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold)),
                          ]))))),
          // tombol cancel:
          Positioned(
              top: 510.0,
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
                                content: Text(
                                    'Pembuangan Sampah Anda telah selesai! Terima kasih!'),
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
                      child: const Text("Buang Sampah Selesai")))),
        ]));
  }
}
