import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lemonsensei_home/screens/resume/sectionHeader.dart';
import 'package:lemonsensei_home/screens/resume/skills/skillProgressBar.dart';

class Language extends StatelessWidget {
  const Language({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.black87, width: 1),
      ),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 375),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            SectionHeader(
              headerIcon: const Icon(FontAwesomeIcons.language, size: 30),
              headerName: "resume.skill.language.skill-lang".tr(),
            ),
            SkillProgressBar(
              skillName: "resume.skill.language.thai".tr(),
              skillLevel: 10,
            ),
            SkillProgressBar(
              skillName: "resume.skill.language.us".tr(),
              skillLevel: 7,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
