import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your Email",

            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",

            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color:Colors.orange,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: Text("Login")),
          ),
        ],
      ),
    );
  }
}
