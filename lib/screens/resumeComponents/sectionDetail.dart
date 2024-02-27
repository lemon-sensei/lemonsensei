import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SectionDetail extends StatelessWidget {
  @required
  final String name;
  @required
  final String detail_1;
  @required
  final String detail_2;
  @required
  final String date;
  @required
  final String certificateURL;

  const SectionDetail({
    super.key,
    required this.name,
    required this.detail_1,
    required this.detail_2,
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
            name,
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
            "$detail_1 ● $detail_2",
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