// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'home.dart';

class Bantuan extends StatefulWidget {
  const Bantuan({super.key});

  @override
  State<Bantuan> createState() => _BantuanState();
}

class _BantuanState extends State<Bantuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        color: Color(0xFFF1F0F8),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_rounded, color: Color(0xFF1F1656), size: 32.0),
                padding: const EdgeInsets.fromLTRB(0, 6.5, 5, 0),
                constraints: BoxConstraints(),
                onPressed: () {Navigator.of(context).pop(context);},
              ),
              SizedBox(width: 7),
              Text('Bantuan', style: TextStyle(fontFamily: "Nunito", fontSize: 40, fontWeight: FontWeight.w800, color: Color(0xFF1F1656)),),
            ]),
          SizedBox(height:35),
          Text('Apa itu Zerotronics?',textAlign: TextAlign.left, style: TextStyle(fontFamily: "Nunito", fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF1F1656))),
          SizedBox(height: 5),
          Text('Zerotronics adalah aplikasi yang menghubungkan pengguna dengan pihak pengelola sampah elektronik. Dengan Zerotronics, pengguna dapat membuang sampah elektronik ke pihak pengelola sampah dengan mudah dan cepat.',
          style: TextStyle(fontFamily: "Nunito", fontSize: 14, color: Color(0xFF1F1656))),
          SizedBox(height:20),
          Text('Bagaimana cara saya membuang sampah elektronik dengan Zerotronics?', style: TextStyle(fontFamily: "Nunito", fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF1F1656))),
          SizedBox(height: 5),
          Text('Anda dapat membuang sampah melalui fitur “Buang Sampah”. Masukkan lokasi Anda serta spesifikasi sampah elektronik yang ingin dibuang. Setelah mengonfirmasi pembuangan sampah, harap menunggu petugas pengelola sampah untuk mengambil sampah Anda. Petugas akan mengambil dan membawa sampah Anda ke pusat pengelolaan sampah elektronik. Setelah itu, Anda bisa mendapatkan hasil penjualan sampah Anda.',
          style: TextStyle(fontFamily: "Nunito", fontSize: 14, color: Color(0xFF1F1656))),
          SizedBox(height:20),
          Text('Bagaimana saya menghubungi petugas Zerotronics?', style: TextStyle(fontFamily: "Nunito", fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF1F1656))),
          SizedBox(height: 5),
          Text('Setelah mengonfirmasi pembuangan sampah, Anda dapat melihat profil petugas Zerotronics pada halaman Tracking. Untuk menghubungi petugas, Anda dapat tap tombol “Hubungi Petugas” untuk bertukar pesan dengan petugas.',
          style: TextStyle(fontFamily: "Nunito", fontSize: 14, color: Color(0xFF1F1656))),
          SizedBox(height:20),
          Text('Kapan saya mendapatkan reward dari sampah saya?', style: TextStyle(fontFamily: "Nunito", fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF1F1656))),
          SizedBox(height: 5),
          Text('Anda akan mendapatkan reward setelah proses pembuangan sampah selesai. Reward akan dikirimkan melalui metode yang Anda pilih.',
          style: TextStyle(fontFamily: "Nunito", fontSize: 14, color: Color(0xFF1F1656))),
          SizedBox(height:20),
          Text('Di mana saya melihat riwayat buang sampah saya?', style: TextStyle(fontFamily: "Nunito", fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF1F1656))),
          SizedBox(height: 5),
          Text('Riwayat pembuangan sampah dapat dilihat pada bagian bawah halaman “My Profile”.',
          style: TextStyle(fontFamily: "Nunito", fontSize: 14, color: Color(0xFF1F1656))),
        ]
          ),
        ),
      )),
    );
  }
}