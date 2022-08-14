import 'package:flutter/material.dart';

import 'package:flutter_tawk/flutter_tawk.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Help Desk'),
          backgroundColor: Color.fromARGB(255, 2, 138, 216),
          elevation: 0,
        ),
        body: Tawk(
          directChatLink:
              'https://tawk.to/chat/62f8d59454f06e12d88e8e07/1gae04jqt',
          visitor: TawkVisitor(
            name: 'Alzaidan',
            email: 'alzaidan1312@gmail.com',
          ),
          placeholder: const Center(
            child: Text('Loading...'),
          ),
        ),
      ),
    );
  }
}
