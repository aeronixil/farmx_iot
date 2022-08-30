import 'package:farmx_iot/services/auth.dart';
import "package:flutter/material.dart";
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 24,
              ),
              const Image(image: AssetImage('assets/logo.png')),
              const SizedBox(
                height: 40,
              ),
              const Text("login"),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your username',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Password"),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SignInButton(Buttons.Google, onPressed: () {
                AuthService().googleLogin();
              }),
              SignInButton(Buttons.Email, onPressed: () {
                AuthService().anonLogin();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
