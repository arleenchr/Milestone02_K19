import 'chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bantuan.dart';
import 'home.dart';
import 'main.dart';

void main() {
  runApp(MyApp());
}

// mohon maaf code nya tidak efektif & size nya masih ngikut

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        //BACKGROUND
        Container(
          color: const Color.fromARGB(255, 241, 240, 248),
        ),
        // PAGEVIEW
        SafeArea(
            child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 80,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        color: Colors.transparent,
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Navigator
                            },
                            icon: const Icon(
                              Icons.arrow_back_rounded,
                              color: Color.fromARGB(255, 31, 22, 86),
                              size: 36,
                            )),
                      ),
                      const Text(
                        "My Profile",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 28,
                            color: Color.fromARGB(255, 31, 22, 86),
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                )),
            Stack(children: [
              Container(
                  width: screenWidth - 65,
                  height: 120,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Container(
                          width: 60, height: 120, color: Colors.transparent),
                      Container(
                          width: screenWidth - 65 - 60,
                          height: 120,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 153, 1),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: screenWidth - 65 - 60,
                                color: Colors.transparent,
                                margin: const EdgeInsets.only(left: 40),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text("UserName",
                                          style: TextStyle(
                                              fontFamily: "Nunito",
                                              fontSize: 22,
                                              color: Color.fromARGB(
                                                  255, 31, 22, 86),
                                              fontWeight: FontWeight.w600)),
                                      Text("08XXXXXXXXXX",
                                          style: TextStyle(
                                              fontFamily: "Nunito",
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 31, 22, 86)))
                                    ]),
                              ),
                              Container(
                                  width: screenWidth - 65 - 60,
                                  height: 40,
                                  padding:
                                      const EdgeInsets.only(left: 35, top: 9),
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 237, 200, 4),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(15))),
                                  child: const Text("0 Points",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Nunito", fontSize: 13)))
                            ],
                          ))
                    ],
                  )),
              Stack(children: [
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 240, 248),
                      borderRadius: BorderRadius.circular(100),
                    )),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      // color: const Color.fromARGB(255, 31, 22, 86),
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                          image: AssetImage('assets/profile_picture.png'),
                          fit: BoxFit.fill)),
                ),
              ]),
            ]),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 5),
                    Container(
                      width: screenWidth - 65,
                      height: 305,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(75, 145, 139, 180),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        children: [
                          Container(
                              width: screenWidth - 105,
                              height: 45,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 31, 22, 86),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Center(
                                child: Text("Edit Account",
                                    style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize: 16,
                                        color: Colors.white)),
                              )),
                          const SizedBox(height: 10),
                          Container(
                              width: screenWidth - 105,
                              height: 45,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 31, 22, 86),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Center(
                                child: Text("Withdraw & Transfer",
                                    style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize: 16,
                                        color: Colors.white)),
                              )),
                          const SizedBox(height: 10),
                          Container(
                              width: screenWidth - 105,
                              height: 45,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 31, 22, 86),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return HubungiPetugas();
                                  }));
                                },
                                child: const Center(
                                  child: Text("Hubungi Petugas",
                                      style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize: 16,
                                        color: Colors.white,
                                      )),
                                ),
                              )),
                          const SizedBox(height: 10),
                          Container(
                              width: screenWidth - 105,
                              height: 45,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 31, 22, 86),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return Bantuan();
                                  }));
                                },
                                child: const Center(
                                  child: Text("Bantuan",
                                      style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize: 16,
                                        color: Colors.white,
                                      )),
                                ),
                              )),
                          const SizedBox(height: 10),
                          Container(
                              width: screenWidth - 105,
                              height: 45,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 31, 22, 86),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Center(
                                child: Text("History",
                                    style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize: 16,
                                        color: Colors.white)),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                        width: 320,
                        height: 570,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10)),
                            border: Border.all(
                                color: const Color.fromARGB(125, 0, 0, 0))),
                        child: Expanded(
                            child: ListView(
                          children: [
                            Container(
                                width: 101,
                                height: 48,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    border: const Border(
                                        bottom: const BorderSide(
                                            color:
                                                Color.fromARGB(30, 0, 0, 0)))),
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: 330,
                                          height: 22,
                                          color: Colors.transparent,
                                          child: const Text(
                                            "Date : 00/00/0000",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600),
                                          )),
                                      Container(
                                          width: 330,
                                          height: 15,
                                          color: Colors.transparent,
                                          child: const Text(
                                              "No. Transaksi : 080808080808080808",
                                              style: TextStyle(
                                                  fontFamily: "Nunito",
                                                  fontSize: 10)))
                                    ])),
                            Container(
                                width: 100,
                                height: 120,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border(
                                        bottom: BorderSide(
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)))),
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        width: 330,
                                        height: 22,
                                        color: Colors.transparent,
                                        child: const Text(
                                            "Jenis : Televisi Bekas",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13))),
                                    Container(
                                        width: 270,
                                        height: 17,
                                        color: Colors.transparent,
                                        child: const Text("Status : Rusak",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 10))),
                                    Container(
                                        width: 270,
                                        height: 17,
                                        color: Colors.transparent,
                                        child: const Text(
                                            "Harga satuan : Rp 50.000,00",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 10))),
                                    Container(
                                        width: 330,
                                        height: 22,
                                        color: Colors.transparent,
                                        child: const Text(
                                            "Jenis : Televisi Bekas",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13))),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                        width: 330,
                                        height: 24,
                                        color: Colors.transparent,
                                        alignment: Alignment.centerRight,
                                        child: const Text(
                                            "Total: Rp 100.000,00",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13))),
                                  ],
                                )),
                            Container(
                                width: 101,
                                height: 48,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    border: const Border(
                                        bottom: const BorderSide(
                                            color:
                                                Color.fromARGB(30, 0, 0, 0)))),
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: 330,
                                          height: 22,
                                          color: Colors.transparent,
                                          child: const Text(
                                            "Date : 00/00/0000",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600),
                                          )),
                                      Container(
                                          width: 330,
                                          height: 15,
                                          color: Colors.transparent,
                                          child: const Text(
                                              "No. Transaksi : 080808080808080808",
                                              style: TextStyle(
                                                  fontFamily: "Nunito",
                                                  fontSize: 10)))
                                    ])),
                            Container(
                                width: 100,
                                height: 120,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border(
                                        bottom: BorderSide(
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)))),
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        width: 330,
                                        height: 22,
                                        color: Colors.transparent,
                                        child: const Text(
                                            "Jenis : Televisi Bekas",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13))),
                                    Container(
                                        width: 270,
                                        height: 17,
                                        color: Colors.transparent,
                                        child: const Text("Status : Rusak",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 10))),
                                    Container(
                                        width: 270,
                                        height: 17,
                                        color: Colors.transparent,
                                        child: const Text(
                                            "Harga satuan : Rp 50.000,00",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 10))),
                                    Container(
                                        width: 330,
                                        height: 22,
                                        color: Colors.transparent,
                                        child: const Text(
                                            "Jenis : Televisi Bekas",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13))),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                        width: 330,
                                        height: 24,
                                        color: Colors.transparent,
                                        alignment: Alignment.centerRight,
                                        child: const Text(
                                            "Total: Rp 100.000,00",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13))),
                                  ],
                                )),
                            Container(
                                width: 101,
                                height: 48,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    border: const Border(
                                        bottom: const BorderSide(
                                            color:
                                                Color.fromARGB(30, 0, 0, 0)))),
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: 330,
                                          height: 22,
                                          color: Colors.transparent,
                                          child: const Text(
                                            "Date : 00/00/0000",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600),
                                          )),
                                      Container(
                                          width: 330,
                                          height: 15,
                                          color: Colors.transparent,
                                          child: const Text(
                                              "No. Transaksi : 080808080808080808",
                                              style: TextStyle(
                                                  fontFamily: "Nunito",
                                                  fontSize: 10)))
                                    ])),
                            Container(
                                width: 100,
                                height: 120,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border(
                                        bottom: BorderSide(
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)))),
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        width: 330,
                                        height: 22,
                                        color: Colors.transparent,
                                        child: const Text(
                                            "Jenis : Televisi Bekas",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13))),
                                    Container(
                                        width: 270,
                                        height: 17,
                                        color: Colors.transparent,
                                        child: const Text("Status : Rusak",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 10))),
                                    Container(
                                        width: 270,
                                        height: 17,
                                        color: Colors.transparent,
                                        child: const Text(
                                            "Harga satuan : Rp 50.000,00",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 10))),
                                    Container(
                                        width: 330,
                                        height: 22,
                                        color: Colors.transparent,
                                        child: const Text(
                                            "Jenis : Televisi Bekas",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13))),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                        width: 330,
                                        height: 24,
                                        color: Colors.transparent,
                                        alignment: Alignment.centerRight,
                                        child: const Text(
                                            "Total: Rp 100.000,00",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13))),
                                  ],
                                )),
                            Container(
                                width: 101,
                                height: 48,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    border: const Border(
                                        bottom: const BorderSide(
                                            color:
                                                Color.fromARGB(30, 0, 0, 0)))),
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: 330,
                                          height: 22,
                                          color: Colors.transparent,
                                          child: const Text(
                                            "Date : 00/00/0000",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600),
                                          )),
                                      Container(
                                          width: 330,
                                          height: 15,
                                          color: Colors.transparent,
                                          child: const Text(
                                              "No. Transaksi : 080808080808080808",
                                              style: TextStyle(
                                                  fontFamily: "Nunito",
                                                  fontSize: 10)))
                                    ])),
                            Container(
                                width: 100,
                                height: 120,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border(
                                        bottom: BorderSide(
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)))),
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        width: 330,
                                        height: 22,
                                        color: Colors.transparent,
                                        child: const Text(
                                            "Jenis : Televisi Bekas",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13))),
                                    Container(
                                        width: 270,
                                        height: 17,
                                        color: Colors.transparent,
                                        child: const Text("Status : Rusak",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 10))),
                                    Container(
                                        width: 270,
                                        height: 17,
                                        color: Colors.transparent,
                                        child: const Text(
                                            "Harga satuan : Rp 50.000,00",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 10))),
                                    Container(
                                        width: 330,
                                        height: 22,
                                        color: Colors.transparent,
                                        child: const Text(
                                            "Jenis : Televisi Bekas",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13))),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                        width: 330,
                                        height: 24,
                                        color: Colors.transparent,
                                        alignment: Alignment.centerRight,
                                        child: const Text(
                                            "Total: Rp 100.000,00",
                                            style: TextStyle(
                                                fontFamily: "Nunito",
                                                fontSize: 13))),
                                  ],
                                )),
                            const SizedBox(height: 300)
                          ],
                        ))),
                    const SizedBox(height: 25)
                  ],
                )
              ],
            ))
          ], // column's child
        ))
      ], // stack's child
    ));
  }
}
