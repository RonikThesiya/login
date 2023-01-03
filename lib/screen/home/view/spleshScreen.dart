import 'dart:async';

import 'package:flutter/material.dart';

import '../../../utils/sharedpref.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    checklogin();
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 200,
        ),
      ),
    ));
  }

  void checklogin() async {
    bool? status = await getloginvalue();

    if (status == true) {
      Timer(Duration(seconds: 3),
          () => Navigator.pushReplacementNamed(context, 'home'));
    } else {
      Timer(Duration(seconds: 3),
          () => Navigator.pushReplacementNamed(context, 'login'));
    }
  }
}
