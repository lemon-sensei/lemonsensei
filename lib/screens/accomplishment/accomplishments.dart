import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lemonsensei_home/components/header.dart';
import 'package:lemonsensei_home/screens/accomplishment/CertificateHeader.dart';
import 'package:lemonsensei_home/screens/accomplishment/certificateDetail.dart';

import '../../components/drawerMenu.dart';
import '../../components/footer.dart';
import '../../components/headerMobile.dart';

class AccomplishmentsPage extends StatelessWidget {
  const AccomplishmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
        const ApplicationSwitcherDescription(
            label: "LemonSensei - Accomplishments"));

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
                const SizedBox(
                  height: 100,
                ),
                const Center(
                  child: Text(
                    "• LemonSensei •",
                    style: TextStyle(
                      fontFamily: "KodeMono",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "accomplishments.title".tr(),
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                const SizedBox(height: 50),
                CertificateHeader(
                  name: "accomplishments.specialization".tr(),
                  icon: const Icon(FontAwesomeIcons.buildingColumns, size: 30),
                ),
                CertificateDetail(
                    name: "Google Data Analytics Professional Certificate",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "November 19, 2023",
                    urlName: "accomplishments.view-cert".tr(),
                    url:
                        "https://www.coursera.org/account/accomplishments/professional-cert/KTBM5DKBAR6A"),
                CertificateDetail(
                    name: "Google Cybersecurity Professional Certificate",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                CertificateDetail(
                    name:
                        "Data Engineering, Big Data, and Machine Learning on GCP Specialization",
                    detail_1: "Coursera - Google Cloud Training",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                const SizedBox(height: 50),
                CertificateHeader(
                  name: "accomplishments.course".tr(),
                  icon: const Icon(FontAwesomeIcons.buildingColumns, size: 30),
                ),
                CertificateDetail(
                    name: "Foundations: Data, Data, Everywhere",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "September 25, 2023",
                    urlName: "accomplishments.view-cert".tr(),
                    url:
                        "https://www.coursera.org/account/accomplishments/verify/68KT7YMNVPMC"),
                CertificateDetail(
                    name: "Ask Questions to Make Data-Driven Decisions",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "August 20, 2023",
                    urlName: "accomplishments.view-cert".tr(),
                    url:
                        "https://www.coursera.org/account/accomplishments/verify/JC7YVE2P294A"),
                CertificateDetail(
                    name: "Prepare Data for Exploration",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "August 29, 2023",
                    urlName: "accomplishments.view-cert".tr(),
                    url:
                        "https://www.coursera.org/account/accomplishments/verify/85HC5N7BZP97"),
                CertificateDetail(
                    name: "Process Data from Dirty to Clean",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "September 25, 2023",
                    urlName: "accomplishments.view-cert".tr(),
                    url:
                        "https://www.coursera.org/account/accomplishments/verify/E55JTJ25GHPK"),
                CertificateDetail(
                    name: "Analyze Data to Answer Questions",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "October 19, 2023",
                    urlName: "accomplishments.view-cert".tr(),
                    url:
                        "https://www.coursera.org/account/accomplishments/verify/99PWXN7FBCUN"),
                CertificateDetail(
                    name: "Share Data Through the Art of Visualization",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "October 31, 2023",
                    urlName: "accomplishments.view-cert".tr(),
                    url:
                        "https://www.coursera.org/account/accomplishments/verify/GWDVDG9GTXNH"),
                CertificateDetail(
                    name: "Data Analysis with R Programming",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "November 10, 2023",
                    urlName: "accomplishments.view-cert".tr(),
                    url:
                        "https://www.coursera.org/account/accomplishments/verify/D5PN7GRDANMG"),
                CertificateDetail(
                    name:
                        "Google Data Analytics Capstone: Complete a Case Study",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "November 19, 2023",
                    urlName: "accomplishments.view-cert".tr(),
                    url:
                        "https://www.coursera.org/account/accomplishments/verify/J8XPD5HH36VX"),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (screenWidth * 30) / 100, vertical: 20),
                  child: const Divider(
                    thickness: 3,
                  ),
                ),
                CertificateDetail(
                    name: "Foundations of Cybersecurity",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                CertificateDetail(
                    name: "Play It Safe: Manage Security Risks",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                CertificateDetail(
                    name: "Connect and Protect: Networks and Network Security",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                CertificateDetail(
                    name: "Tools of the Trade: Linux and SQL",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                CertificateDetail(
                    name: "Assets, Threats, and Vulnerabilities",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                CertificateDetail(
                    name: "Sound the Alarm: Detection and Response",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                CertificateDetail(
                    name: "Automate Cybersecurity Tasks with Python",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                CertificateDetail(
                    name: "Put It to Work: Prepare for Cybersecurity Jobs",
                    detail_1: "Coursera - Google Career Certificates",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (screenWidth * 30) / 100, vertical: 20),
                  child: const Divider(
                    thickness: 3,
                  ),
                ),
                CertificateDetail(
                    name:
                        "Smart Analytics, Machine Learning, and AI on Google Cloud",
                    detail_1: "Coursera - Google Cloud Training",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                CertificateDetail(
                    name:
                        "Building Resilient Streaming Analytics Systems on Google Cloud",
                    detail_1: "Coursera - Google Cloud Training",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                CertificateDetail(
                    name: "Building Batch Data Pipelines on Google Cloud",
                    detail_1: "Coursera - Google Cloud Training",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                CertificateDetail(
                    name:
                        "Google Cloud Big Data and Machine Learning Fundamentals",
                    detail_1: "Coursera - Google Cloud Training",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
                CertificateDetail(
                    name:
                        "Modernizing Data Lakes and Data Warehouses with Google Cloud",
                    detail_1: "Coursera - Google Cloud Training",
                    detail_2: "accomplishments.issuing-in-progress".tr(),
                    urlName: "accomplishments.issuing-in-progress".tr(),
                    url: ""),
              ],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
