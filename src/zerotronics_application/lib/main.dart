import 'package:flutter/material.dart';
import 'package:zerotronics_application/login-or-signup.dart';
import 'package:zerotronics_application/login.dart';
import 'package:zerotronics_application/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Welcome());
  }
}
