import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:lemonsensei_home/components/header.dart';
import 'package:lemonsensei_home/components/textDescription.dart';
import 'package:lemonsensei_home/components/textTitle.dart';
import 'package:lemonsensei_home/screens/resume/achievement.dart';
import 'package:lemonsensei_home/screens/resume/education.dart';
import 'package:lemonsensei_home/screens/resume/pastWork.dart';
import 'package:lemonsensei_home/screens/resume/resumeContact.dart';
import 'package:lemonsensei_home/screens/resume/selfEducation.dart';
import 'package:lemonsensei_home/screens/resume/skills/interest.dart';
import 'package:lemonsensei_home/screens/resume/skills/language.dart';
import 'package:lemonsensei_home/screens/resume/skills/softSkill.dart';
import 'package:lemonsensei_home/screens/resume/skills/techSkill.dart';

import '../../components/drawerMenu.dart';
import '../../components/footer.dart';
import '../../components/headerMobile.dart';

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
                    padding: EdgeInsets.only(top: 100),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage:
                          AssetImage("assets/images/lemonsensei-profile.jpg"),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      "resume.name".tr(),
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "resume.cto".tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const SizedBox(height: 25),
                Divider(
                  thickness: 3,
                  color: Colors.black,
                  indent: MediaQuery.of(context).size.width * 0.45,
                  endIndent: MediaQuery.of(context).size.width * 0.45,
                ),
                const SizedBox(height: 25),
                screenWidth > 800
                    ? resumeContactDesktop()
                    : resumeContactMobile(),
                const SizedBox(height: 50),
                TextTitle(text: "resume.text.intro".tr()),
                TextDescription(text: "resume.text.intro-desc1".tr()),
                const SizedBox(height: 100),
                const Wrap(
                  children: [
                    Column(
                      children: [
                        TechSkill(),
                        SoftSkill(),
                        Language(),
                      ],
                    ),
                    Column(
                      children: [
                        Education(),
                        SelfEducation(),
                        Achievement(),
                      ],
                    ),
                    Column(
                      children: [
                        PastWork(),
                        Interest(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Row resumeContactDesktop() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ResumeContact(
          icon: Icon(FontAwesomeIcons.envelope),
          text: "inthad.yu@gmail.com",
        ),
        ResumeContact(
          icon: Icon(FontAwesomeIcons.phone),
          text: "+66 93 576 6884",
        ),
        ResumeContact(
          icon: Icon(FontAwesomeIcons.linkedin),
          text: "linkedin.com/in/inthad-yuvajita",
        ),
      ],
    );
  }

  Wrap resumeContactMobile() {
    return const Wrap(
      runSpacing: 10,
      children: [
        ResumeContact(
          icon: Icon(FontAwesomeIcons.envelope),
          text: "inthad.yu@gmail.com",
        ),
        ResumeContact(
          icon: Icon(FontAwesomeIcons.phone),
          text: "+66 93 576 6884",
        ),
        ResumeContact(
          icon: Icon(FontAwesomeIcons.linkedin),
          text: "linkedin.com/in/inthad-yuvajita",
        ),
      ],
    );
  }
}
