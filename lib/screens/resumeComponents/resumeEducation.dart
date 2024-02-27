import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lemonsensei_home/screens/resumeComponents/sectionDetail.dart';
import 'package:lemonsensei_home/screens/resumeComponents/sectionHeader.dart';

class ResumeEducation extends StatelessWidget {
  const ResumeEducation({
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
              headerIcon:
              Icon(FontAwesomeIcons.buildingColumns),
              headerName: "Educations",
            ),
            SectionDetail(
              name:
              "Demonstration Prince of Songkla University",
              detail_1: "Math & Art Program",
              detail_2: "GPAX 3.33",
              date: "From 2011 - 2014",
              certificateURL: "-",
            ),
            SectionDetail(
              name:
              "Prince of Songkla University International College",
              detail_1:
              "Digital Media Program, Major Interactive Media",
              detail_2: "GPAX 3.50 (First Honor)",
              date: "From 2014 - 2018",
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