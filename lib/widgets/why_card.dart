import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text_styles.dart';

class WhyCard extends StatelessWidget {
  final String title;
  final String description;

  const WhyCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Column(
        children: [
          Text(title, textAlign: TextAlign.center, style: AppFonts.cardTitle),
          const SizedBox(height: 16),
          Text(description, textAlign: TextAlign.center, style: AppFonts.body),
        ],
      ),
    );
  }
}
