import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FThemeData {
  static ThemeData light = ThemeData(
    textTheme: TextTheme(
      displayMedium: GoogleFonts.rubik(
        textStyle: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
      ),
      displaySmall: GoogleFonts.rubik(
        textStyle: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
      ),
      titleMedium: GoogleFonts.rubik(
        textStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      bodyMedium: GoogleFonts.rubik(
        textStyle: const TextStyle(
          fontSize: 20,
        ),
      ),
      bodySmall: GoogleFonts.rubik(
        textStyle: const TextStyle(
          fontSize: 13,
          color: Color.fromRGBO(30, 30, 30, 1),
        ),
      ),
      labelMedium: GoogleFonts.rubik(
        textStyle: const TextStyle(
          fontSize: 17,
        ),
      ),
    ),
  );
}
