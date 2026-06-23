import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  late final PageController _pageController;
  int currentIndex = 0;

  final List<Map<String, String>> projects = [
    {
      'title': 'r.e.d!',
      'description':
          'r.e.d! is a digital platform designed to connect users with exclusive offers, rewards, and lifestyle benefits through a simple and engaging mobile experience. The application provides seamless access to member services, personalized promotions, and account management features while maintaining a modern and user-friendly interface. Built with a focus on convenience and accessibility, r.e.d! helps users discover and enjoy valuable benefits anytime, anywhere.',
      'image': 'assets/images/red.png',
      'playStore':
          'https://play.google.com/store/apps/details?id=me.redapp&hl=en_IN',
      'appStore': 'https://apps.apple.com/in/app/r-e-d/id6502828362',
    },
    {
      'title': 'SPINVID',
      'description':
          'Developed and maintained core features of the SpinVid mobile application, empowering users to create, customize, and share spinning video content through an intuitive interface. The app focuses on delivering a smooth editing experience, high-quality video output, and engaging visual effects tailored for social media creators and digital content enthusiasts.',
      'image': 'assets/images/spinvid.png',
      'playStore':
          'https://play.google.com/store/apps/details?id=com.spinvid&hl=en_IN',
      'appStore': '',
    },
    {
      'title': 'More Cravings',
      'description':
          'Developed and maintained key features for the More Cravings by Marriott Bonvoy mobile application, enabling users to discover premium dining venues, access exclusive offers, explore curated culinary experiences, and enjoy seamless restaurant booking and rewards management through an intuitive and engaging user interface.',
      'image': 'assets/images/mcv.png',
      'playStore':
          'https://play.google.com/store/apps/details?id=com.marriott.morecravings',
      'appStore': '',
    },
    {
      'title': 'The Fund',
      'description':
          'The Fund App is a digital funding and investment platform designed to connect entrepreneurs, startups, and investors. The application streamlines the registration and funding process by allowing users to submit business proposals, manage investment opportunities, and track funding progress through an intuitive mobile experience. The platform aims to support innovation and business growth by providing a secure and accessible ecosystem for fundraising and investment management.',
      'image': 'assets/images/fund.png',
      'playStore':
          'https://play.google.com/store/apps/details?id=com.mobileapp.fund',
      'appStore': '',
    },
    {
      'title': 'Mediguru',
      'description':
          'Developed and maintained key features of the MediGuru mobile application, delivering an engaging e-learning experience for medical students. The app enables users to access high-quality video lectures, participate in mock examinations, explore study resources, and monitor academic progress through an intuitive and user-friendly interface. The platform focuses on enhancing accessibility, learning efficiency, and exam readiness for aspiring healthcare professionals.',
      'image': 'assets/images/mediguru.png',
      'playStore':
          'https://play.google.com/store/apps/details?id=com.mediguru.application',
      'appStore': '',
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.95);
  }

  Future<void> openUrl(String url) async {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  void nextPage() {
    final next = currentIndex == projects.length - 1 ? 0 : currentIndex + 1;

    _pageController.animateToPage(
      next,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void previousPage() {
    final previous = currentIndex == 0 ? projects.length - 1 : currentIndex - 1;

    _pageController.animateToPage(
      previous,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 768;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Text(
            'Featured Projects',
            style: AppFonts.sectionTitle,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 40),

          Row(
            children: [
              if (!isMobile)
                IconButton(
                  onPressed: previousPage,
                  icon: const Icon(Icons.arrow_back_ios),
                ),

              Expanded(
                child: SizedBox(
                  height: isMobile ? 850 : 650,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: projects.length,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      final project = projects[index];

                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: isMobile ? 8 : 16,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white12),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: [
                                Colors.black,
                                Colors.black,
                                Color(0xFF050816),
                                Color(0xFF0F172A),
                                Color(0xFF111827),
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(isMobile ? 16 : 24),
                            child: isMobile
                                ? Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(24),
                                        child: Image.asset(
                                          project['image']!,
                                          height: 250,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      const SizedBox(height: 24),

                                      Text(
                                        project['title']!,
                                        textAlign: TextAlign.center,
                                        style: AppFonts.projectTitle,
                                      ),

                                      const SizedBox(height: 16),

                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Text(
                                            project['description']!,
                                            textAlign: TextAlign.center,
                                            style: AppFonts.body,
                                          ),
                                        ),
                                      ),

                                      const SizedBox(height: 24),

                                      Wrap(
                                        spacing: 12,
                                        runSpacing: 12,
                                        alignment: WrapAlignment.center,
                                        children: [
                                          ElevatedButton.icon(
                                            onPressed: () {
                                              openUrl(project['playStore']!);
                                            },
                                            icon: const Icon(Icons.android),
                                            label: const Text('Play Store'),
                                          ),

                                          if (project['appStore']!.isNotEmpty)
                                            ElevatedButton.icon(
                                              onPressed: () {
                                                openUrl(project['appStore']!);
                                              },
                                              icon: const Icon(Icons.apple),
                                              label: const Text('App Store'),
                                            ),
                                        ],
                                      ),
                                    ],
                                  )
                                : Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            24,
                                          ),
                                          child: Image.asset(
                                            project['image']!,
                                            height: 500,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),

                                      const SizedBox(width: 40),

                                      Expanded(
                                        flex: 4,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              project['title']!,
                                              style: AppFonts.projectTitle,
                                            ),

                                            const SizedBox(height: 24),

                                            Flexible(
                                              child: SingleChildScrollView(
                                                child: Text(
                                                  project['description']!,
                                                  textAlign: TextAlign.start,
                                                  style: AppFonts.body,
                                                ),
                                              ),
                                            ),

                                            const SizedBox(height: 50),

                                            Wrap(
                                              spacing: 16,
                                              alignment: WrapAlignment.center,
                                              children: [
                                                ElevatedButton.icon(
                                                  onPressed: () {
                                                    openUrl(
                                                      project['playStore']!,
                                                    );
                                                  },
                                                  icon: const Icon(
                                                    Icons.android,
                                                  ),
                                                  label: const Text(
                                                    'Play Store',
                                                  ),
                                                ),

                                                if (project['appStore']!
                                                    .isNotEmpty)
                                                  ElevatedButton.icon(
                                                    onPressed: () {
                                                      openUrl(
                                                        project['appStore']!,
                                                      );
                                                    },
                                                    icon: const Icon(
                                                      Icons.apple,
                                                    ),
                                                    label: const Text(
                                                      'App Store',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              if (!isMobile)
                IconButton(
                  onPressed: nextPage,
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
            ],
          ),

          const SizedBox(height: 24),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              projects.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: currentIndex == index ? 24 : 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: currentIndex == index ? Colors.white : Colors.white30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
