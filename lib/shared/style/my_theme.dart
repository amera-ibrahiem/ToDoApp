import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFF5D9CEC);
  static Color primaryColorDark = Color(0xFF5D9CEC);
  static Color onPrimary = Color(0xFFDFECDB);
  static Color greenColor = Color(0xFF61E757);
  static Color redColor = Color(0xFFEC4B4B);
  static Color whiteColor = Color(0xFFFFFFFF);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      // canvasColor: whiteColor,
      scaffoldBackgroundColor:onPrimary,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: primaryColor,
          elevation: 0,
          iconTheme: IconThemeData(color: whiteColor)),
      textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            color: whiteColor,
            fontWeight: FontWeight.w700,
          ),
          headline2: TextStyle(
            fontSize: 25,
            color: primaryColor,
            fontWeight: FontWeight.w400,
          ),
          subtitle1: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryColor, unselectedItemColor: Colors.grey));

  static final ThemeData darkTheme = ThemeData(
      primaryColor: primaryColorDark,
      canvasColor: primaryColorDark,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)),
      textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            color: whiteColor,
            fontWeight: FontWeight.w700,
          ),
          headline2: TextStyle(
            fontSize: 25,
            color: primaryColorDark,
            fontWeight: FontWeight.w400,
          ),
          subtitle1: TextStyle(
              fontSize: 20, color: whiteColor, fontWeight: FontWeight.w500)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryColorDark, unselectedItemColor: Colors.white));
}