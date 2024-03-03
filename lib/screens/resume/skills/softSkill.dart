import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lemonsensei_home/screens/resume/sectionHeader.dart';
import 'package:lemonsensei_home/screens/resume/skills/skillProgressBar.dart';

class SoftSkill extends StatelessWidget {
  const SoftSkill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.black87, width: 5),
      ),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            SectionHeader(
              headerIcon: const Icon(FontAwesomeIcons.handshake, size: 30),
              headerName: "resume.skill.soft-skill.soft-skill".tr(),
            ),
            SkillProgressBar(
              skillName: "resume.skill.soft-skill.curiosity-and-learning".tr(),
              skillLevel: 10,
            ),
            SkillProgressBar(
              skillName: "resume.skill.soft-skill.emotional-intelligence".tr(),
              skillLevel: 8,
            ),
            SkillProgressBar(
              skillName: "resume.skill.soft-skill.adaptability-and-flexibility".tr(),
              skillLevel: 8,
            ),
            SkillProgressBar(
              skillName: "resume.skill.soft-skill.ethical-awareness".tr(),
              skillLevel: 8,
            ),
            SkillProgressBar(
              skillName: "resume.skill.soft-skill.critical-thinking".tr(),
              skillLevel: 7,
            ),
            SkillProgressBar(
              skillName: "resume.skill.soft-skill.creativity".tr(),
              skillLevel: 6,
            ),
            SkillProgressBar(
              skillName: "resume.skill.soft-skill.collaboration-and-teamwork".tr(),
              skillLevel: 6,
            ),
            SkillProgressBar(
              skillName: "resume.skill.soft-skill.interpersonal-communication".tr(),
              skillLevel: 5,
            ),
            SkillProgressBar(
              skillName: "resume.skill.soft-skill.leadership".tr(),
              skillLevel: 5,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
