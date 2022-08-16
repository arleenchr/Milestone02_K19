// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'login-or-signup.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => login_or_signup()));} , //buat ke login/signup
          child: Container(
            color: Color.fromARGB(255,36,6,103),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Image(image: AssetImage('logo.png')),
                SizedBox(height:40),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Text('tap to continue ...', style: TextStyle(fontFamily: "Nunito", fontSize: 13, fontWeight: FontWeight.w300, color: Color(0xFFDAD9E1).withOpacity(0.6)))
                )
              ],
            ),
          )
        )
      )
    );
  }
} 