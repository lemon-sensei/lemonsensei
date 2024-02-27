import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lemonsensei_home/screens/resumeComponents/sectionDetail.dart';
import 'package:lemonsensei_home/screens/resumeComponents/sectionHeader.dart';
import 'package:lemonsensei_home/screens/resumeComponents/skillDetail.dart';

class ResumeSkills extends StatelessWidget {
  const ResumeSkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black87,
          width: 5,
        ),
      ),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 400,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            SectionHeader(
              headerIcon: Icon(FontAwesomeIcons.award),
              headerName: "Tech Skill",
            ),
            SkillDetail(
              skillName: "Flutter",
              skillLevel: 9,
            ),
            SkillDetail(
              skillName: "Data Analysis",
              skillLevel: 7,
            ),
            SkillDetail(
              skillName: "Data Cleansing",
              skillLevel: 7,
            ),
            SkillDetail(
              skillName: "Data Visualization",
              skillLevel: 7,
            ),
            SkillDetail(
              skillName: "Python (Programming Language)",
              skillLevel: 6,
            ),
            SkillDetail(
              skillName: "C# (Programming Language)",
              skillLevel: 6,
            ),
            SkillDetail(
              skillName: "Dart (Programming Language)",
              skillLevel: 6,
            ),
            SkillDetail(
              skillName: "Spreadsheets",
              skillLevel: 5,
            ),
            SkillDetail(
              skillName: "Database Queries",
              skillLevel: 4,
            ),
            SkillDetail(
              skillName: "SQL",
              skillLevel: 4,
            ),
            SizedBox(
              height: 25,
            ),
            SectionHeader(
              headerIcon: Icon(FontAwesomeIcons.award),
              headerName: "Soft Skill",
            ),
            SkillDetail(
              skillName: "Working in Gigs",
              skillLevel: 10,
            ),
            SkillDetail(
              skillName: "Curiosity and Learning",
              skillLevel: 10,
            ),
            SkillDetail(
              skillName: "Emotional Intelligence",
              skillLevel: 8,
            ),
            SkillDetail(
              skillName: "Adaptability and Flexibility",
              skillLevel: 8,
            ),
            SkillDetail(
              skillName: "Ethical Awareness",
              skillLevel: 8,
            ),
            SkillDetail(
              skillName: "Critical Thinking",
              skillLevel: 7,
            ),
            SkillDetail(
              skillName: "Creativity",
              skillLevel: 6,
            ),
            SkillDetail(
              skillName: "Collaboration and Teamwork",
              skillLevel: 6,
            ),
            SkillDetail(
              skillName: "Interpersonal Communication",
              skillLevel: 6,
            ),
            SkillDetail(
              skillName: "Leadership",
              skillLevel: 6,
            ),
            SizedBox(
              height: 25,
            ),
            SectionHeader(
              headerIcon: Icon(FontAwesomeIcons.language),
              headerName: "Language Skill",
            ),
            SkillDetail(
              skillName: "Thai",
              skillLevel: 10,
            ),
            SkillDetail(
              skillName: "English (US)",
              skillLevel: 7,
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
