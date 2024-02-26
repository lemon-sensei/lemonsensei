import 'package:flutter/material.dart';

import 'certificateDetail.dart';
import 'certificateHeader.dart';

class GoogleDataAnalyticsProfessionalCertificate extends StatelessWidget {
  const GoogleDataAnalyticsProfessionalCertificate({
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
            CertificateHeader(
              headerName: "Specialization Certificate",
            ),
            CertificateDetail(
              certificateName: "Google Data Analytics Professional Certificate",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by November 19, 2023",
              certificateURL:
                  "https://www.coursera.org/account/accomplishments/professional-cert/KTBM5DKBAR6A",
            ),
            CertificateHeader(
              headerName: "Course Certificates",
            ),
            CertificateDetail(
              certificateName: "Foundations: Data, Data, Everywhere",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by September 25, 2023",
              certificateURL:
                  "https://www.coursera.org/account/accomplishments/verify/68KT7YMNVPMC",
            ),
            CertificateDetail(
              certificateName: "Ask Questions to Make Data-Driven Decisions",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by August 20, 2023",
              certificateURL:
                  "https://www.coursera.org/account/accomplishments/verify/JC7YVE2P294A",
            ),
            CertificateDetail(
              certificateName: "Prepare Data for Exploration",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by August 29, 2023",
              certificateURL:
                  "https://www.coursera.org/account/accomplishments/verify/85HC5N7BZP97",
            ),
            CertificateDetail(
              certificateName: "Process Data from Dirty to Clean",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by September 25, 2023",
              certificateURL:
                  "https://www.coursera.org/account/accomplishments/verify/E55JTJ25GHPK",
            ),
            CertificateDetail(
              certificateName: "Analyze Data to Answer Questions",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by October 19, 2023",
              certificateURL:
                  "https://www.coursera.org/account/accomplishments/verify/99PWXN7FBCUN",
            ),
            CertificateDetail(
              certificateName: "Share Data Through the Art of Visualization",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by October 31, 2023",
              certificateURL:
                  "https://www.coursera.org/account/accomplishments/verify/GWDVDG9GTXNH",
            ),
            CertificateDetail(
              certificateName: "Data Analysis with R Programming",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by November 10, 2023",
              certificateURL:
                  "https://www.coursera.org/account/accomplishments/verify/D5PN7GRDANMG",
            ),
            CertificateDetail(
              certificateName:
                  "Google Data Analytics Capstone: Complete a Case Study",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by November 19, 2023",
              certificateURL:
                  "https://www.coursera.org/account/accomplishments/verify/J8XPD5HH36VX",
            ),
          ],
        ),
      ),
    );
  }
}
