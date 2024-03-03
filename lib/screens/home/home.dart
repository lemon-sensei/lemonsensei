import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:lemonsensei_home/components/headerMobile.dart';

import '../../components/drawerMenu.dart';
import '../../components/footer.dart';
import '../../components/header.dart';
import '../../components/testimonial.dart';
import '../../components/textDescription.dart';
import 'homeSkill.dart';
import '../../components/textTitle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    SystemChrome.setApplicationSwitcherDescription(
        const ApplicationSwitcherDescription(label: "LemonSensei - Home"));

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: screenWidth < 600 ? const HeaderMobile() : const Header(),
      ),
      drawer: screenWidth < 600 ? const DrawerMenu() : null,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 100,
                ),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage:
                      AssetImage("assets/images/lemonsensei-profile.jpg"),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "home.name".tr(),
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 10),
              Text(
                "home.position".tr(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 30),
              Divider(
                thickness: 3,
                indent: screenWidth * 0.45,
                endIndent: screenWidth * 0.45,
              ),
              const SizedBox(height: 30),
              TextDescription(text: "home.text.text-1".tr()),
              TextTitle(text: "home.skill-title".tr()),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: SizedBox(
                  width: 600,
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: [
                      HomeSkill(name: "Flutter"),
                      HomeSkill(name: "home.skill.skill-dart".tr()),
                      HomeSkill(name: "home.skill.skill-python".tr()),
                      HomeSkill(name: 'HTML'),
                      HomeSkill(name: 'CSS'),
                      HomeSkill(name: "home.skill.skill-js".tr()),
                      HomeSkill(name: 'SvelteKit'),
                      HomeSkill(name: "home.skill.skill-unity".tr()),
                      HomeSkill(name: 'C#'),
                      HomeSkill(name: 'Firebase'),
                      HomeSkill(name: "home.skill.skill-gcloud".tr()),
                      HomeSkill(name: 'Netlify'),
                      HomeSkill(name: "home.skill.skill-spreadsheets".tr()),
                      HomeSkill(name: "home.skill.skill-de".tr()),
                      HomeSkill(name: "home.skill.skill-dc".tr()),
                      HomeSkill(name: "home.skill.skill-dataValid".tr()),
                      HomeSkill(name: "home.skill.skill-da".tr()),
                      HomeSkill(name: "home.skill.skill-dataVis".tr()),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              TextDescription(text: "home.text.text-2".tr()),
              const SizedBox(height: 30),
              TextDescription(text: "home.text.text-3".tr()),
              const SizedBox(height: 30),
              TextDescription(text: "home.text.text-4".tr()),
              const SizedBox(height: 50),
              const Testimonial(path: 'assets/images/galleries/'),
              const SizedBox(height: 30),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
