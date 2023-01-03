import 'package:flutter/material.dart';
import 'package:login/utils/sharedpref.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: txtemail,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Email id"),
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            controller: txtpassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Password"),
            ),
          ),
          SizedBox(height: 20,),

          ElevatedButton(onPressed: () {
            RegisterUser(txtemail.text,txtpassword.text);
            Navigator.pop(context);

          }, child: Text("Sign Up")),
          SizedBox(height: 60,),
        ],
      ),
    ));
  }
}
