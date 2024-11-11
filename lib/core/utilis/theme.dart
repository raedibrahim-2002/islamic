import 'package:flutter/material.dart';

class AppTheme {
  static Color blackColor = const Color(0xff242424);
  static Color primaryLight = const Color(0xffB7935F);
  static Color whiteColor = Colors.white;

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      // showSelectedLabels: true,
      // showUnselectedLabels: true,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: blackColor,
      ),
    ),
  );
}
