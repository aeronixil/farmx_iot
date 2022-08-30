import 'package:farmx_iot/pages.dart';
import 'package:farmx_iot/services/auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: Text("loading now"),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("eror loading"),
          );
        } else if (snapshot.hasData) {
          return const DevicesPage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
