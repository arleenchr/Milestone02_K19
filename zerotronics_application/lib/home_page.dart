import 'package:flutter/material.dart';
import 'profile_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nunito',
      // Set Raleway as the default app font.
      theme: ThemeData(fontFamily: 'Nunito'),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //BACKGROUND
          Container(
            color: const Color.fromARGB(255, 241, 240, 248),
          ),
          //PAGE VIEW
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                const SizedBox(height:20),
                Container(width: double.infinity, height: 100, 
                  color: Colors.transparent,
                  child: Padding( padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: (
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text("Home",
                           style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 31, 22, 86)
                            ), 
                          ),
                          // IconButton(onPressed: () {
                          //   Navigator.of(context).pop(
                          //     MaterialPageRoute(builder: (context) {
                          //       return const ChatPage();
                          //     })
                            // );
                          // }, 
                            // icon: const Icon(Icons.chat_bubble_outline_rounded,
                            //   color: Color.fromARGB(255, 31, 22, 86),
                            //   size: 35,
                            // )
                          // )
                        ], // row children
                      )
                    ), //child padding
                  )
                ),
                const SizedBox(height:20),
                Container(
                  width: 360,
                  height: 150,
                  color: Color.fromARGB(255, 255, 153, 1),
                  child:GestureDetector(
                    child: const Text("lihat profile"),
                    onTap:(){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return const ProfilePage();
                        })
                      );
                    }
                  )
                )
              ] // Column children
            ),
          )
        ], // stack children
      )
    );
  } // build
} // HomePage
