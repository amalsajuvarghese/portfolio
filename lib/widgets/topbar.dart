import 'package:flutter/material.dart';
import 'package:portfolio/utils/helper_responsive.dart';
import 'package:portfolio/widgets/nav_button.dart';
import 'package:portfolio/widgets/portfolio_page.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: isMobile
          ? Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    NavButton(
                      title: 'ABOUT',
                      sectionKey: PortfolioPage.aboutKey,
                    ),
                    NavButton(
                      title: 'SKILLS',
                      sectionKey: PortfolioPage.skillsKey,
                    ),
                    NavButton(
                      title: 'PROJECTS',
                      sectionKey: PortfolioPage.projectsKey,
                    ),
                    NavButton(
                      title: 'CONTACT',
                      sectionKey: PortfolioPage.contactKey,
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Wrap(
                  spacing: 20,
                  children: [
                    NavButton(
                      title: 'ABOUT',
                      sectionKey: PortfolioPage.aboutKey,
                    ),
                    NavButton(
                      title: 'SKILLS',
                      sectionKey: PortfolioPage.skillsKey,
                    ),
                    NavButton(
                      title: 'PROJECTS',
                      sectionKey: PortfolioPage.projectsKey,
                    ),
                    NavButton(
                      title: 'CONTACT',
                      sectionKey: PortfolioPage.contactKey,
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
