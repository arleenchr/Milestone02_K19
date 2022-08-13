import 'package:flutter/material.dart';
import 'package:loginpage/Screens/Login/LoginScreens.dart';
import 'package:loginpage/routes.dart';
import 'package:loginpage/theme.dart';

void main() async {
  runApp(MaterialApp(
    title: "Login",
    theme: theme(),
    initialRoute: LoginScreen.routeName,
    routes: routes,
  ));
}
