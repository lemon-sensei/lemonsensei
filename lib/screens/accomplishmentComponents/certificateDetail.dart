import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificateDetail extends StatelessWidget {
  @required
  final String certificateName;
  @required
  final String platform;
  @required
  final String certificateType;
  @required
  final String date;
  @required
  final String certificateURL;

  const CertificateDetail({
    super.key,
    required this.certificateName,
    required this.platform,
    required this.certificateType,
    required this.certificateURL,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 25,
            left: 25,
            right: 25,
          ),
          child: Text(
            certificateName,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 25,
            right: 25,
          ),
          child: Text(
            "$platform ● $certificateType",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 25,
            right: 25,
          ),
          child: Text(
            date,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 25,
            bottom: 25,
            right: 25,
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ElevatedButton.icon(
              onPressed: () async {
                if (await canLaunchUrl(Uri.parse(certificateURL))) {
                  await launchUrl(Uri.parse(certificateURL));
                } else {
                  throw 'Could not launch ${Uri.parse(certificateURL)}';
                }
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              icon: const Icon(Icons.arrow_back),
              label: Text(
                "Show Certificate",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
        ),
      ],
    );
  }
}