import 'package:flutter/material.dart';

import 'CertificateDetail.dart';
import 'CertificateHeader.dart';

class DataEngineeringBigDataAndMachineLearningOnGCPSpecialization
    extends StatelessWidget {
  const DataEngineeringBigDataAndMachineLearningOnGCPSpecialization({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black45,
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
              certificateName:
                  "Data Engineering, Big Data, and Machine Learning on GCP Specialization",
              platform: "Coursera",
              certificateType: "Google Cloud Training",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateHeader(
              headerName: "Course Certificates",
            ),
            CertificateDetail(
              certificateName:
                  "Smart Analytics, Machine Learning, and AI on Google Cloud",
              platform: "Coursera",
              certificateType: "Google Cloud Training",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateDetail(
              certificateName:
                  "Building Resilient Streaming Analytics Systems on Google Cloud",
              platform: "Coursera",
              certificateType: "Google Cloud Training",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateDetail(
              certificateName: "Building Batch Data Pipelines on Google Cloud",
              platform: "Coursera",
              certificateType: "Google Cloud Training",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateDetail(
              certificateName:
                  "Google Cloud Big Data and Machine Learning Fundamentals",
              platform: "Coursera",
              certificateType: "Google Cloud Training",
              date: "Completed by Pending",
              certificateURL: "-",
            ),
            CertificateDetail(
              certificateName:
                  "Modernizing Data Lakes and Data Warehouses with Google Cloud",
              platform: "Coursera",
              certificateType: "Google Cloud Training",
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
