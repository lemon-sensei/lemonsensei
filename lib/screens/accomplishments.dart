import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lemonsensei_home/components/header.dart';

import '../components/drawerMenu.dart';
import '../components/headerMobile.dart';
import 'accomplishmentComponents/dataEngineeringBigDataAndMachineLearningOnGCPSpecialization.dart';
import 'accomplishmentComponents/googleCybersecurityProfessionalCertificate.dart';
import 'accomplishmentComponents/googleDataAnalyticsProfessionalCertificate.dart';

class AccomplishmentsPage extends StatelessWidget {
  const AccomplishmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
        const ApplicationSwitcherDescription(label: "LemonSensei - Accomplishments"));

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
                "Honors & Accomplishments",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            if (screenWidth <= 1000) const MobileAccomplishments(),
            if (screenWidth > 1000 && screenWidth <= 1400)
              const TabletAccomplishments(),
            if (screenWidth > 1400) const DesktopAccomplishments(),
          ],
        ),
      ),
    );
  }
}

class DesktopAccomplishments extends StatelessWidget {
  const DesktopAccomplishments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child: GoogleDataAnalyticsProfessionalCertificate(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child:
                    DataEngineeringBigDataAndMachineLearningOnGCPSpecialization(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child: GoogleCybersecurityProfessionalCertificate(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TabletAccomplishments extends StatelessWidget {
  const TabletAccomplishments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child: GoogleDataAnalyticsProfessionalCertificate(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child:
                    DataEngineeringBigDataAndMachineLearningOnGCPSpecialization(),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child: GoogleCybersecurityProfessionalCertificate(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MobileAccomplishments extends StatelessWidget {
  const MobileAccomplishments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Padding(
              padding: EdgeInsets.only(
                top: 25,
                bottom: 25,
              ),
              child: GoogleDataAnalyticsProfessionalCertificate()),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 25,
              bottom: 25,
            ),
            child:
                DataEngineeringBigDataAndMachineLearningOnGCPSpecialization(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 25,
              bottom: 25,
            ),
            child: GoogleCybersecurityProfessionalCertificate(),
          ),
        ),
      ],
    );
  }
}
