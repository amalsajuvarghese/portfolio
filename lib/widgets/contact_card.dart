import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text_styles.dart';

class ContactCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String value;
  final VoidCallback onTap;

  const ContactCard({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: screenWidth < 600 ? screenWidth * .9 : 300,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(.05),
          border: Border.all(color: Colors.white10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 42, color: Colors.purple),
            const SizedBox(height: 16),

            Text(title, style: AppFonts.cardTitle),

            SelectableText(
              value,
              textAlign: TextAlign.center,
              style: AppFonts.small,
            ),
          ],
        ),
      ),
    );
  }
}
