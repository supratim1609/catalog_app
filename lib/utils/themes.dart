import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes{
  static ThemeData LightTheme(BuildContext context)=> ThemeData(
      primarySwatch: Colors.teal,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.teal),
        centerTitle: true,
      )
  );

  static ThemeData DarkTheme(BuildContext context)=>
      ThemeData(brightness: Brightness.light,);
}