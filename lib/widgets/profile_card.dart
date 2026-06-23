import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text_styles.dart';
import 'package:portfolio/utils/helper_responsive.dart';
import 'package:portfolio/widgets/info_tile.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      constraints: BoxConstraints(maxWidth: isMobile ? double.infinity : 450),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(.08),
            Colors.white.withOpacity(.03),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: Colors.white10),
        boxShadow: [
          BoxShadow(color: Colors.cyan.withOpacity(.15), blurRadius: 50),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 20 : 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 130,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [Colors.cyan, Colors.purple]),
              ),
              child: const Center(
                child: Text(
                  'A',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'AMAL SAJU VARGHESE',
              textAlign: TextAlign.center,
              style: AppFonts.cardTitle.copyWith(
                fontSize: Responsive.isMobile(context) ? 20 : 28,
              ),
            ),

            Text('Senior Flutter Developer', style: AppFonts.smallTitle),
            const SizedBox(height: 15),
            const InfoTile(title: 'Experience', value: '9+ Years'),
            const SizedBox(height: 15),
            const InfoTile(title: 'Projects', value: '15+ Apps'),
            const SizedBox(height: 15),
            const InfoTile(title: 'Specialization', value: 'Flutter & UI/UX'),
          ],
        ),
      ),
    );
  }
}
