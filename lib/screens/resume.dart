import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:lemonsensei_home/components/header.dart';
import 'package:lemonsensei_home/screens/resumeComponents/resumeAchievementAndAwards.dart';
import 'package:lemonsensei_home/screens/resumeComponents/resumeEducation.dart';
import 'package:lemonsensei_home/screens/resumeComponents/resumeSkills.dart';

import '../components/drawerMenu.dart';
import '../components/footer.dart';
import '../components/headerMobile.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
        const ApplicationSwitcherDescription(label: "LemonSensei - Resume"));

    var screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: screenWidth < 600 ? const HeaderMobile() : const Header(),
      ),
      drawer: screenWidth < 600 ? const DrawerMenu() : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: CircleAvatar(
                      radius: 75,
                      backgroundImage:
                          AssetImage("assets/images/lemonsensei-profile.jpg"),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      "Inthad Yuvajita",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Computer Technical Officer",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Brief Introduction",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 25,
                    left: 25,
                  ),
                  child: SizedBox(
                    width: screenWidth > 600 ? 800 : 400,
                    child: Text(
                      "During my journey, I have developed an understanding of applications in data analysis. Through the work and hands-on projects, I have gained experience in databases, manipulating data, and generating insightful presentations. I am also confident in my ability to develop any application from the web to a native machine using the Flutter framework.",
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                if (screenWidth <= 1000) const MobileResume(),
                if (screenWidth > 1000 && screenWidth <= 1400)
                  const TabletResume(),
                if (screenWidth > 1400) const DesktopResume(),
              ],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class DesktopResume extends StatelessWidget {
  const DesktopResume({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child: ResumeEducation(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child: ResumeAchievementAndAwards(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child: ResumeSkills(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TabletResume extends StatelessWidget {
  const TabletResume({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child: ResumeEducation(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child: ResumeAchievementAndAwards(),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child: ResumeSkills(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MobileResume extends StatelessWidget {
  const MobileResume({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 25,
              bottom: 25,
            ),
            child: ResumeEducation(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 25,
              bottom: 25,
            ),
            child: ResumeAchievementAndAwards(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 25,
              bottom: 25,
            ),
            child: ResumeSkills(),
          ),
        ),
      ],
    );
  }
}
