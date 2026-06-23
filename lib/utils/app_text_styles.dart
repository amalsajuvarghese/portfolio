import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle heroTitle = GoogleFonts.spaceGrotesk(
    fontSize: 68,
    fontWeight: FontWeight.w700,
    height: 1.0,
    letterSpacing: -2,
    color: Colors.white,
  );

  static TextStyle sectionTitle = GoogleFonts.spaceGrotesk(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle projectTitle = GoogleFonts.spaceGrotesk(
    fontSize: 36,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle cardTitle = GoogleFonts.spaceGrotesk(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle smallTitle = GoogleFonts.spaceGrotesk(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle body = GoogleFonts.inter(
    fontSize: 18,
    color: Colors.white70,
    height: 1.8,
  );

  static TextStyle small = GoogleFonts.inter(
    fontSize: 16,
    color: Colors.white70,
  );

  static TextStyle button = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
