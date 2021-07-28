import 'package:flutter/material.dart';
import 'package:flutterapp/pages/home_page.dart';
import 'package:flutterapp/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,

      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.yellow,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => Login(),
        "/home": (context) => HomePage(),
        "/login": (context) => Login(),
      },
    );
  }
}
