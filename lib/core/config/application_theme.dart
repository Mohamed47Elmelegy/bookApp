import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static Color primaryColor = const Color(0xff100B20);
  static ThemeData appTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: primaryColor,
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: 'GT Sectra Fine',
      ),
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontFamily: 'GT Sectra Fine',
      ),
      bodySmall: TextStyle(
        color: Color.fromRGBO(
          122,
          122,
          122,
          0.7,
        ),
        fontSize: 14,
        fontFamily: 'Actor',
      ),
      bodyMedium: TextStyle(
        color: Color.fromRGBO(
          122,
          122,
          122,
          0.7,
        ),
        fontSize: 18,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
