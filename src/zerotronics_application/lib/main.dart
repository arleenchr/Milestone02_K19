import 'package:flutter/material.dart';
import 'package:zerotronics_application/bantuan.dart';
import 'package:zerotronics_application/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}
