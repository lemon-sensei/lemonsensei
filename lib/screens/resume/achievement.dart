import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lemonsensei_home/screens/resume/sectionDetail.dart';
import 'package:lemonsensei_home/screens/resume/sectionHeader.dart';

class Achievement extends StatelessWidget {
  const Achievement({
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
              headerIcon: const Icon(FontAwesomeIcons.award, size: 30),
              headerName: "resume.achievements.achievements-title".tr(),
            ),
            const SizedBox(height: 25),
            SectionDetail(
              name: "resume.achievements.nsc".tr(),
              detail_1: "resume.achievements.nsc-desc1".tr(),
              url: "",
              urlName: '',
            ),
            const Padding(
              padding:
              EdgeInsets.only(top: 20, bottom: 20, left: 25, right: 25),
              child: Divider(thickness: 1),
            ),
            SectionDetail(
              name: "resume.achievements.samo".tr(),
              detail_1: "resume.achievements.samo-desc1".tr(),
              url: "",
              urlName: '',
            ),
            const Padding(
              padding:
              EdgeInsets.only(top: 20, bottom: 20, left: 25, right: 25),
              child: Divider(thickness: 1),
            ),
            SectionDetail(
              name: "resume.achievements.digicon".tr(),
              detail_1: "resume.achievements.digicon-desc1".tr(),
              url: "",
              urlName: '',
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}