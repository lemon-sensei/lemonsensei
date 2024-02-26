import 'package:flutter/material.dart';

import 'CertificateDetail.dart';
import 'CertificateHeader.dart';

class GoogleCybersecurityProfessionalCertificate extends StatelessWidget {
  const GoogleCybersecurityProfessionalCertificate({
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
              certificateName: "Google Cybersecurity Professional Certificate",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateHeader(
              headerName: "Course Certificates",
            ),
            CertificateDetail(
              certificateName: "Foundations of Cybersecurity",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateDetail(
              certificateName: "Play It Safe: Manage Security Risks",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateDetail(
              certificateName:
                  "Connect and Protect: Networks and Network Security",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateDetail(
              certificateName: "Tools of the Trade: Linux and SQL",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateDetail(
              certificateName: "Assets, Threats, and Vulnerabilities",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateDetail(
              certificateName: "Sound the Alarm: Detection and Response",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateDetail(
              certificateName: "Automate Cybersecurity Tasks with Python",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateDetail(
              certificateName: "Put It to Work: Prepare for Cybersecurity Jobs",
              platform: "Coursera",
              certificateType: "Google Career Certificates",
              date: "Completed by Pending",
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
