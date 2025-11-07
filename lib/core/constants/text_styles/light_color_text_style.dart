import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_app/core/constants/app_colors.dart';

class LightColorTextStyles {
  static TextTheme schama = TextTheme(
    displayLarge: GoogleFonts.titilliumWeb(
      fontSize: 26,
      fontWeight: FontWeight.w800,
      color: Colors.black,
    ),
    displayMedium: GoogleFonts.outfit(
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: AppColors.c5,
    ),
    // displaySmall: GoogleFonts.titilliumWeb(
    //   fontSize: 12,
    //   fontWeight: FontWeight.w400,
    //   color: AppColors.c2,
    // ),

    // Body Text Styles
    bodyLarge: GoogleFonts.outfit(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: AppColors.c5,
    ),
    bodyMedium: GoogleFonts.outfit(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColors.c5,
    ),
    bodySmall: GoogleFonts.outfit(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: AppColors.c5,
    ),

    // headlineLarge: GoogleFonts.outfit(
    //   fontSize: 25,
    //   fontWeight: FontWeight.w600,
    //   color: AppColors.c5,
    // ),
    headlineMedium: GoogleFonts.titilliumWeb(
      fontSize: 26,
      fontWeight: FontWeight.w400,
      color: AppColors.c5,
    ),
    headlineSmall: GoogleFonts.outfit(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.c2,
    ),
    // titleLarge:
  );
}
