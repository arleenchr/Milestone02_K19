import 'package:flutter/material.dart';
import 'package:loginpage/Components/Login/LoginComponent.dart';
import 'package:loginpage/size_config.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: LoginComponent(),
    );
  }
}
