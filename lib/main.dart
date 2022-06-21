import 'package:arcade_42/screens/home.page.dart';
import 'package:arcade_42/screens/login.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  // Load Environment Variables
  await dotenv.load();
  // Init App
  runApp(MaterialApp(
    home: const LoginPage(),
    debugShowCheckedModeBanner: false,
    routes: {
      '/Login': (context) => const LoginPage(),
      '/HomePage': (context) => const HomePage(),
    },
  ));
}
