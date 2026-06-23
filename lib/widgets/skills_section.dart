import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text_styles.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      'Flutter',
      'Dart',
      'Firebase',
      'REST APIs',
      'Riverpod',
      'Animations',
      'Responsive UI',
      'Git',
      'Android',
      'Kotlin',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Text('Skills & Technologies', style: AppFonts.sectionTitle),
          const SizedBox(height: 50),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: skills
                .map(
                  (skill) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 18,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(.05),
                      border: Border.all(color: Colors.white10),
                    ),
                    child: Text(skill, style: AppFonts.body),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
