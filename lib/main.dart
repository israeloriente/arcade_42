import 'package:arcade_42/screens/home_page.dart';
import 'package:arcade_42/screens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
    routes: {
      '/Login': (context) => const LoginPage(),
      '/HomePage': (context) => const HomePage(),
    },
  ));
}
