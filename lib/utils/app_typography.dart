import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTypography {
  static TextStyle Heading1 = GoogleFonts.inter(
    fontSize: 56,
    fontWeight: FontWeight.w700
  );
  static TextStyle Heading2 = GoogleFonts.inter(
    fontSize: 48,
    fontWeight: FontWeight.w700
  );
  static TextStyle Heading3 = GoogleFonts.inter(
    fontSize: 40,
    fontWeight: FontWeight.w700
  );
  static TextStyle Heading4 = GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.w700
  );
  static TextStyle Heading5 = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w700
  );
  static TextStyle heading6 = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600
  );
  static TextStyle body1 = GoogleFonts.inter(
    fontSize: 20,
  );
  static TextStyle Body2 = GoogleFonts.inter(
    fontSize: 18,
  );
  static TextStyle Body3 = GoogleFonts.inter(
    fontSize: 16,
  );
  static TextStyle Body4 = GoogleFonts.inter(
    fontSize: 14,
  );
  static TextStyle Body5 = GoogleFonts.inter(
    fontSize: 12,
  );
  static TextStyle Body6 = GoogleFonts.inter(
    fontSize: 10,
  );
}