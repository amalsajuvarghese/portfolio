import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text_styles.dart';
import 'package:portfolio/widgets/contact_card.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> launchLinkedIn() async {
      final Uri url = Uri.parse(
        'https://www.linkedin.com/in/amalsajuvarghese/',
      );

      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        throw Exception('Could not launch LinkedIn');
      }
    }

    Future<void> launchPhone() async {
      final Uri phoneUri = Uri(scheme: 'tel', path: '+918547336966');

      await launchUrl(phoneUri);
    }

    Future<void> launchEmail() async {
      final Uri emailUri = Uri(
        scheme: 'mailto',
        path: 'amalsajuvarghese@gmail.com',
        query: 'subject=Portfolio Inquiry',
      );

      await launchUrl(emailUri);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Text('Contact Me', style: AppFonts.sectionTitle),
          const SizedBox(height: 20),
          Text('Let’s build something amazing together.', style: AppFonts.body),
          const SizedBox(height: 50),
          Wrap(
            spacing: 30,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              ContactCard(
                title: 'Email',
                icon: Icons.email_outlined,
                value: 'amalsajuvarghese@gmail.com',
                onTap: launchEmail,
              ),
              ContactCard(
                title: 'LinkedIn',
                icon: Icons.business_center_outlined,
                value: '@amalsajuvarghese',
                onTap: launchLinkedIn,
              ),
              ContactCard(
                title: 'Phone',
                icon: Icons.phone_outlined,
                value: '+91 8547336966',
                onTap: launchPhone,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
