import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/styles/text_styles.dart';
import 'app_colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLightColor,
    scaffoldBackgroundColor: lightBackgroundColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: primaryLightColor,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.amiri(
          fontSize: 25, fontWeight: FontWeight.bold, color: primaryLightColor),
      bodySmall: robotoSmall(),
      bodyMedium: popinsMedium(),
      bodyLarge: popinsLarge(),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: primaryLightColor,
      unselectedItemColor: Colors.grey,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    scaffoldBackgroundColor: DarkBackgroundColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: primaryDarkColor,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.amiri(
          fontSize: 25, fontWeight: FontWeight.bold, color: primaryLightColor),
      bodySmall: GoogleFonts.roboto(
          fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
      bodyMedium: GoogleFonts.poppins(
          fontSize: 18, fontWeight: FontWeight.bold, color: primaryDarkColor),
      bodyLarge: GoogleFonts.poppins(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: primaryDarkColor,
      unselectedItemColor: Colors.white,
    ),
  );
}
