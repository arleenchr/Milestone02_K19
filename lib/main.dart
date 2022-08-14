import 'package:flutter/material.dart';
import 'package:zerotronics_tracking/tracking1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Builder(
        builder: (context) {
          return Tracking1();
        },
      ),
    );
    //appBar: AppBar(
    //  title: const Text("ZeroTracking"),
    //),
    //body: Center(
    //  child: ElevatedButton(
    //    child: const Text("Tracking"),
    //    onPressed: () {
    //      Navigator.push(
    //        context,
    //        MaterialPageRoute(builder: (context) => Tracking1()),
    //      );
    //    },
    //  ),
    //),
  }
}

//class HomeScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text('Home Screen')),
//      body: Center(
//        child: ElevatedButton(
//          child: Text(
//            'Navigate to a new screen >>',
//            style: TextStyle(fontSize: 24.0),
//          ),
//          onPressed: () {
//            Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (context) {
//                  return Tracking1();
//                },
//              ),
//            );
//            );
//          },
//        ),
//      ),
//    );
//  }