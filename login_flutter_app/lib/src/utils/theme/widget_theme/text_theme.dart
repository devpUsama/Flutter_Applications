import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_flutter_app/src/constants/colors.dart';

class GhostTextTheme{
  static TextTheme lightTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
      color: Colors.black87,
    ),
    titleSmall: GoogleFonts.poppins(color: ghostDarkColor),
    titleMedium: GoogleFonts.poppins(color: ghostDarkColor, fontWeight: FontWeight.bold),
    titleLarge: GoogleFonts.poppins(color: ghostDarkColor, fontWeight: FontWeight.bold),
    bodyLarge: GoogleFonts.poppins(color: ghostDarkColor),
    bodyMedium: GoogleFonts.poppins(color: ghostDarkColor ),
    bodySmall: GoogleFonts.poppins(color: ghostDarkColor ),
    headlineLarge: GoogleFonts.montserrat(color: ghostDarkColor, fontWeight: FontWeight.bold),
    headlineMedium: GoogleFonts.montserrat(color: ghostDarkColor, fontWeight: FontWeight.bold ),
    displayLarge: GoogleFonts.montserrat(color: ghostDarkColor, fontWeight: FontWeight.bold),
    displaySmall: GoogleFonts.montserrat(color: ghostDarkColor, fontWeight: FontWeight.bold, fontSize: 30.0 ),
  );



  static TextTheme darkTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
      color: Colors.white70,
    ),
    titleSmall: GoogleFonts.poppins(color: Colors.white60),
    titleMedium: GoogleFonts.poppins(color: Colors.white60 , fontWeight: FontWeight.bold),
    titleLarge: GoogleFonts.poppins(color: Colors.white60, fontWeight: FontWeight.bold),
    bodyLarge: GoogleFonts.poppins(color: Colors.white60),
    bodyMedium: GoogleFonts.poppins(color: Colors.white60 ),
    bodySmall: GoogleFonts.poppins(color: Colors.white60 ),
    headlineLarge: GoogleFonts.montserrat(color: Colors.white70, fontWeight: FontWeight.bold),
    headlineMedium: GoogleFonts.montserrat(color: Colors.white70, fontWeight: FontWeight.bold ),
    displayLarge: GoogleFonts.montserrat(color: Colors.white70, fontWeight: FontWeight.bold),
    displaySmall: GoogleFonts.montserrat(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 30.0 ),
  );
}