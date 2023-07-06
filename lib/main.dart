import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj_1/pages/home_page.dart';
import 'package:proj_1/pages/login_page.dart';
import 'package:proj_1/utils/routes.dart';
import 'package:proj_1/utils/themes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme:MyThemes.LightTheme(context),
      darkTheme:MyThemes.DarkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context)=>HomePage(),
        MyRoutes.loginRoute: (context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
      },
    );
  }
}
