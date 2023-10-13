import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth_provider.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authProvider=Provider.of<AuthProvider >(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your Email",

              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",

                hintText: "Enter your password",

              ),
            ),
            SizedBox(height: 20,),
            InkWell(

              onTap: (){
                authProvider.login(emailController.text.toString(),
                    passwordController.text.toString());

              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color:Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: authProvider.loding?CircularProgressIndicator(color: Colors.white,):Text("Login")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
