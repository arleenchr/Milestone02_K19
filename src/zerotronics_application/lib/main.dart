import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: Scaffold(
        body: Center(
          child: Container(
            color: Color.fromARGB(255, 36, 6, 103),
            width: double.infinity,
            height: double.infinity,
            child: Image(image: AssetImage("logo.png")),
            
          ),
        ),
      ),

    );
  }
}
