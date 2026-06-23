import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_tile.dart';
import 'package:portfolio/widgets/contact_section.dart';
import 'package:portfolio/widgets/hero_section.dart';
import 'package:portfolio/widgets/profile_card.dart';
import 'package:portfolio/widgets/projects_view.dart';
import 'package:portfolio/widgets/skills_section.dart';
import 'package:portfolio/widgets/topbar.dart';
import 'package:portfolio/widgets/why_me_section.dart';

class PortfolioPage extends StatelessWidget {
  static final aboutKey = GlobalKey();
  static final skillsKey = GlobalKey();
  static final projectsKey = GlobalKey();
  static final contactKey = GlobalKey();
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 900;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF050816),
                  Color(0xFF0F172A),
                  Color(0xFF111827),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                const TopBar(),
                const SizedBox(height: 60),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 24),
                  child: isMobile
                      ? const Column(
                          children: [
                            HeroSection(),
                            SizedBox(height: 40),
                            ProfileCard(),
                          ],
                        )
                      : const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(flex: 2, child: HeroSection()),
                            SizedBox(width: 40),
                            Expanded(child: ProfileCard()),
                          ],
                        ),
                ),
                SizedBox(height: isMobile ? 50 : 100),
                AboutSection(key: PortfolioPage.aboutKey),
                SizedBox(height: isMobile ? 50 : 100),
                SkillsSection(key: PortfolioPage.skillsKey),
                SizedBox(height: isMobile ? 50 : 100),
                ProjectsView(key: PortfolioPage.projectsKey),
                SizedBox(height: isMobile ? 50 : 100),
                WhyMeSection(),
                SizedBox(height: isMobile ? 50 : 100),
                ContactSection(key: PortfolioPage.contactKey),
                SizedBox(height: isMobile ? 50 : 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
