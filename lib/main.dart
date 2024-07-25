import 'package:flutter/material.dart';
import 'package:flutter_plus_firebase/login_page.dart';
import 'package:flutter_plus_firebase/signup_page.dart';
import 'package:flutter_plus_firebase/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        primaryColor: const Color(0xff0ACF83),
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
      },
    );
  }
}
