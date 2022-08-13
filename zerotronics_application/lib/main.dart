import 'package:flutter/material.dart';
import 'home_page.dart';
void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Nunito',
//       // Set Raleway as the default app font.
//       theme: ThemeData(fontFamily: 'Nunito'),
//       home: const HomePage(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
