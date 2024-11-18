import 'package:flutter/material.dart';

class AppTheme {
  static Color blackColor = const Color(0xff242424);
  static Color primaryLight = const Color(0xffB7935F);
  static Color primaryDark = const Color(0xff141A2E);
  static Color yellowColor = const Color(0xffFACC1D);

  static Color whiteColor = Colors.white;

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: blackColor)),
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
      titleMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        color: blackColor,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: blackColor,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: whiteColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
      unselectedItemColor: whiteColor,
      // showSelectedLabels: true,
      // showUnselectedLabels: true,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: whiteColor,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        color: whiteColor,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: yellowColor,
      ),
    ),
  );
}
