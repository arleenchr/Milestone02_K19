// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'hubungiPetugas.dart';

class Tracking extends StatefulWidget {
  const Tracking({super.key});

  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tracking'),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_rounded, color: Colors.white),
            onPressed: (() => Navigator.of(context).pop()),
        ),),
        body: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
              top: 5.0,
              left: 10.0,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100.0,
                  width: 340.0,
                  //color: Colors.orange[600],
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
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold)),
                            new TextSpan(
                                text: "Petugas sampai di lokasi Anda.\n"),
                            new TextSpan(
                                text:
                                    "Petugas sedang menuju pusat pengelolaan sampah.\n"),
                            new TextSpan(
                                text:
                                    "Petugas sampai di pusat pengelolaan sampah.\n"),
                            new TextSpan(text: "Pembuangan sampah selesai!"),
                          ])))
                  //child: Text(
                  //  '''
                  //  Konfirmasi pembuangan sampah.\n
                  //  Petugas sedang menuju lokasi Anda.\n
                  //  Petugas sampai di lokasi Anda.\n
                  //  Petugas sedang menuju pusat pengelolaan sampah.\n
                  //  Petugas sampai di pusat pengelolaan sampah.\n
                  //  Pembuangan sampah selesai!''',
                  //  style: TextStyle(fontSize: 12.0),
                  //),
                  ))
        ]));
  }
}