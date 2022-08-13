import 'package:flutter/material.dart';

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

        child: Center(
          child: Text('Bantuan'),
        ),
      )),
    );
  }
}