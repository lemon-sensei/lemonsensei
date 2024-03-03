import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lemonsensei_home/screens/resume/sectionHeader.dart';
import 'package:lemonsensei_home/screens/resume/skills/skillProgressBar.dart';

class TechSkill extends StatelessWidget {
  const TechSkill({
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
              headerIcon: const Icon(FontAwesomeIcons.computer, size: 30),
              headerName: "resume.skill.tech.skill-tech".tr(),
            ),
            const SkillProgressBar(
              skillName: "Flutter",
              skillLevel: 9,
            ),
            SkillProgressBar(
              skillName: "resume.skill.tech.data-cleansing".tr(),
              skillLevel: 7,
            ),
            SkillProgressBar(
              skillName: "resume.skill.tech.data-visualization".tr(),
              skillLevel: 7,
            ),
            SkillProgressBar(
              skillName: "resume.skill.tech.python".tr(),
              skillLevel: 6,
            ),
            SkillProgressBar(
              skillName: "resume.skill.tech.c#".tr(),
              skillLevel: 6,
            ),
            SkillProgressBar(
              skillName: "resume.skill.tech.dart".tr(),
              skillLevel: 6,
            ),
            SkillProgressBar(
              skillName: "resume.skill.tech.data-analysis".tr(),
              skillLevel: 5,
            ),
            SkillProgressBar(
              skillName: "resume.skill.tech.spreadsheets".tr(),
              skillLevel: 5,
            ),
            SkillProgressBar(
              skillName: "resume.skill.tech.database-queries".tr(),
              skillLevel: 4,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
