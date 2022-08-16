import 'package:flutter/material.dart';
import 'package:zerotronics_application/signup.dart';
import 'package:zerotronics_application/login.dart';

class login_or_signup extends StatefulWidget {
  const login_or_signup({super.key});

  @override
  State<login_or_signup> createState() => _login_or_signupState();
}

class _login_or_signupState extends State<login_or_signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDAD9E1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/logo.png'),
          FlatButton(
            textColor: Color(0xFFF1F0F8),
            color: Color(0xFF1F1656),
            minWidth: 300,
            height: 40,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
              //ke login page;
            },
            child: Text(
              'Log In',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito-Bold',
              ),
            ),
          ),
          FlatButton(
            textColor: Color(0xFFF1F0F8),
            color: Color(0xFF1F1656),
            minWidth: 300,
            height: 40,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
              //ke sign up page;
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito-Bold',
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  FlatButton({required Color textColor, required Color color, required int minWidth, required int height, required RoundedRectangleBorder shape, required Null Function() onPressed, required Text child}) {}
}