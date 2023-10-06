import 'package:flutter/material.dart';
import 'package:login_app/pages/home_page.dart';
import 'package:login_app/pages/join_page.dart';
import 'package:login_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      initialRoute: "/login", // 앱 처음 시작화면
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/join": (context) => JoinPage(),
      },
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          minimumSize: Size(double.infinity, 60),
        ),
      ),
    );
  }
}
