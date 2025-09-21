import 'package:delivery_app/pages/login_page.dart';
import 'package:delivery_app/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegistor extends StatefulWidget{
  const LoginOrRegistor({super.key});

  @override
  State<LoginOrRegistor> createState() => _LoginOrRegistorSatate();

}

class _LoginOrRegistorSatate extends State<LoginOrRegistor>{
  
  // initially, show login page
  bool showLoginPage = true;

  // toggle between login and registration
  void togglePages(){
    setState(() {
      showLoginPage =!showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}