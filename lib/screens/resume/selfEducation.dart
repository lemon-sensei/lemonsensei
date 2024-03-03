import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lemonsensei_home/screens/resume/sectionDetail.dart';
import 'package:lemonsensei_home/screens/resume/sectionHeader.dart';

class SelfEducation extends StatelessWidget {
  const SelfEducation({
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
        constraints: const BoxConstraints(
          maxWidth: 375,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            SectionHeader(
              headerIcon:
                  const Icon(FontAwesomeIcons.buildingColumns, size: 30),
              headerName: "resume.self-education.self-education-title".tr(),
            ),
            const SizedBox(height: 25),
            const SectionDetail(
              name: "Google Data Analytics Professional Certificate",
              detail_1: "Google Career Certificates",
              url: "",
              urlName: "",
            ),
            const Padding(
              padding:
              EdgeInsets.only(top: 20, bottom: 20, left: 25, right: 25),
              child: Divider(thickness: 1),
            ),
            const SectionDetail(
              name: "Google Cybersecurity Professional Certificate",
              detail_1: "Google Career Certificates",
              url: "",
              urlName: "",
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 25, right: 25),
              child: Divider(thickness: 1),
            ),
            const SectionDetail(
              name:
                  "Data Engineering, Big Data, and Machine Learning on GCP Specialization",
              detail_1: "Google Cloud Training",
              url: "",
              urlName: "",
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
