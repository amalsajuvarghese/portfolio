import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text_styles.dart';

class NavButton extends StatelessWidget {
  final String title;
  final GlobalKey sectionKey;

  const NavButton({super.key, required this.title, required this.sectionKey});

  void scrollToSection() {
    final context = sectionKey.currentContext;

    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: scrollToSection,
      child: Text(title, style: AppFonts.button),
    );
  }
}
