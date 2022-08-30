// ignore_for_file: depend_on_referenced_packages

import 'package:farmx_iot/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FarmX Smart',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: const DevicesPage(),
      routes: appRoutes,
    );
  }
}
