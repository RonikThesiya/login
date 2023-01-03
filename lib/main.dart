import 'package:flutter/material.dart';
import 'package:login/screen/home/view/homeScreen.dart';
import 'package:login/screen/home/view/loginScreen.dart';
import 'package:login/screen/home/view/signupScreen.dart';
import 'package:login/screen/home/view/spleshScreen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SpleshScreen(),
        'login': (context) => LoginScreen(),
        'signup': (context) => SignupScreen(),
        'home': (context) => HomeScreen(),
      },
    ),
  );
}