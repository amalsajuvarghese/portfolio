import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text_styles.dart';
import 'package:portfolio/utils/helper_responsive.dart';
import 'package:portfolio/widgets/why_card.dart';

class WhyMeSection extends StatelessWidget {
  const WhyMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding: EdgeInsets.all(Responsive.isMobile(context) ? 20 : 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(
            colors: [
              Colors.cyan.withOpacity(.15),
              Colors.purple.withOpacity(.15),
            ],
          ),
          border: Border.all(color: Colors.white10),
        ),
        child: Column(
          children: [
            Text('Why Work With Me?', style: AppFonts.sectionTitle),
            const SizedBox(height: 50),
            Wrap(
              spacing: 40,
              runSpacing: 40,
              alignment: WrapAlignment.center,
              children: const [
                WhyCard(
                  title: 'Clean Architecture',
                  description:
                      'Scalable and maintainable application structure.',
                ),
                WhyCard(
                  title: 'Modern UI design',
                  description:
                      'Premium user interfaces with smooth animations.',
                ),
                WhyCard(
                  title: 'Cross Platform',
                  description: 'Android, iOS, and Flutter Web expertise.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
