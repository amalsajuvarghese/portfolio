import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text_styles.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Text('About Me', style: AppFonts.sectionTitle),

          const SizedBox(height: 30),
          Container(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Text(
              'I am a passionate Flutter developer focused on creating modern, scalable, and premium mobile applications. I specialize in Flutter UI design, API integration, animations, responsive layouts, clean architecture, and performance optimization across Android, iOS, and Flutter Web.',
              textAlign: TextAlign.center,
              style: AppFonts.body,
            ),
          ),
        ],
      ),
    );
  }
}
