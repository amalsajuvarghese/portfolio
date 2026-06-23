import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/app_text_styles.dart';
import 'package:portfolio/widgets/portfolio_page.dart';
import 'package:portfolio/widgets/projects_view.dart';
import 'dart:html' as html;

import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amal Saju Varghese Portfolio',

      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF050816),

        textTheme: TextTheme(
          displayLarge: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          displayMedium: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          displaySmall: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),

          headlineLarge: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          headlineMedium: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          headlineSmall: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),

          titleLarge: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),

          bodyLarge: GoogleFonts.inter(color: Colors.white70, height: 1.8),

          bodyMedium: GoogleFonts.inter(color: Colors.white70, height: 1.8),

          bodySmall: GoogleFonts.inter(color: Colors.white60),
        ),
      ),
      home: const PortfolioPage(),
    );
  }
}
