import 'package:flutter/material.dart';
import 'package:farmx_iot/services/auth.dart';

class AddDevicePage extends StatelessWidget {
  const AddDevicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = AuthService().user;
    return Scaffold(
      appBar: AppBar(
        title: const Text("pair new device"),
      ),
      body: Center(child: Text(user?.uid ?? 'Guest')),
    );
  }
}
