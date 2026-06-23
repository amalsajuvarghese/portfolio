import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text_styles.dart';
import 'package:portfolio/utils/helper_responsive.dart';
import 'package:portfolio/widgets/portfolio_page.dart';
import 'dart:html' as html;

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  void openResume() {
    html.window.open('assets/resume.pdf', '_blank');
  }

  void scrollToProjects() {
    final context = PortfolioPage.projectsKey.currentContext;

    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    }
  }

  // const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.08),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white10),
          ),
          child: Text(
            'Senior Mobile Application Developer',
            style: AppFonts.smallTitle,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          'Building Modern\nMobile Experiences',
          style: AppFonts.heroTitle.copyWith(fontSize: isMobile ? 40 : 72),
        ),
        const SizedBox(height: 24),
        Text(
          'Experienced Flutter developer with 9+ years of expertise in building scalable mobile applications with clean & modern UI, animations, responsive layouts, and clean architecture.',
          style: AppFonts.body,
        ),
        const SizedBox(height: 40),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            InkWell(
              onTap: openResume,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.cyan, Colors.blue],
                  ),
                ),
                child: Text('Download Resume', style: AppFonts.button),
              ),
            ),
            InkWell(
              onTap: scrollToProjects,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(.05),
                  border: Border.all(color: Colors.white10),
                ),
                child: Text('View Projects', style: AppFonts.button),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
