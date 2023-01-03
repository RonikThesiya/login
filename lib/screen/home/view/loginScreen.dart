import 'package:flutter/material.dart';
import 'package:login/utils/sharedpref.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Login"),
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
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: txtpassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Password"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                String? email = txtemail.text;
                String? password = txtpassword.text;

                String? shareemail = await getemail();
                String? sharepassword = await getpassword();

                if(email == shareemail && password == sharepassword)
                  {
                    loginvalue(true);
                    Navigator.pushReplacementNamed(context, 'home');
                  }
              },
              child: Text("Login")),
          SizedBox(
            height: 60,
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'signup');
              },
              child: Text("Create a new account")),
        ],
      ),
    ));
  }
}
