import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lemonsensei_home/screens/resumeComponents/sectionDetail.dart';
import 'package:lemonsensei_home/screens/resumeComponents/sectionHeader.dart';

class ResumeAchievementAndAwards extends StatelessWidget {
  const ResumeAchievementAndAwards({
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
              headerName: "Achievements",
            ),
            SectionDetail(
              name: "World Buddhist Dhammaduta Organisation",
              detail_1: "World Peace Conference",
              detail_2:
                  "IT expert, Data Aggregation and Registration System Development Unit",
              date: "January - May 2023",
              certificateURL: "-",
            ),
            SectionDetail(
              name: "National Software Contest",
              detail_1:
                  "Entertainment software with Skull Servant project",
              detail_2: "Reached the final round of NSC 2017",
              date: "On March 2017",
              certificateURL: "-",
            ),
            SectionDetail(
              name: "Student Association (University SAMO)",
              detail_1: "Internal & External Affair",
              detail_2: "Have been elected for 2 years",
              date: "From 2015 - 2016",
              certificateURL: "-",
            ),
            SectionDetail(
              name: "DigiCon Asia",
              detail_1: "Best Audience Award",
              detail_2: "Short animation name FRI(END)",
              date: "On September 2016",
              certificateURL: "-",
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
