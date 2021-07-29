import 'package:flutter/material.dart';
import 'package:flutterapp/pages/home_page.dart';
import 'package:flutterapp/pages/login_page.dart';
import 'package:flutterapp/utils/routes.dart';
import 'package:flutterapp/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoute.homeroute,
      routes: {
        "/": (context) => Login(),
        MyRoute.homeroute: (context) => HomePage(),
        MyRoute.loginroute: (context) => Login(),
      },
    );
  }
}
