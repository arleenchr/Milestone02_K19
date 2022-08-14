import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home:login_or_signup()
));

class login_or_signup extends StatelessWidget {
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
}
