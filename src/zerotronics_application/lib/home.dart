import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Bantuan.dart';

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

        child: IconButton(
                icon: Icon(Icons.article, color: Color(0xFF1F1656), size: 32.0),
                padding: const EdgeInsets.fromLTRB(0, 6.5, 5, 0),
                constraints: BoxConstraints(),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Bantuan()));}),
              ),
      ));
  }
}