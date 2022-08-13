import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        color: Color(0xFFF1F0F8),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

        child: Text("Home")
      )),
    );
  }
}