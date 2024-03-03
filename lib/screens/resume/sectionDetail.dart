import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SectionDetail extends StatelessWidget {
  @required
  final String name;
  @required
  final String detail_1;

  @required
  final String urlName;
  @required
  final String url;

  const SectionDetail({
    super.key,
    required this.name,
    required this.detail_1,
    required this.url,
    required this.urlName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, ),
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
            detail_1,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        url.isNotEmpty
            ? SectionButton(url: url, urlName: urlName)
            : const SizedBox(),
      ],
    );
  }
}

class SectionButton extends StatelessWidget {
  const SectionButton({
    super.key,
    required this.url,
    required this.urlName,
  });

  final String url;
  final String urlName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
        left: 25,
        right: 25,
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ElevatedButton.icon(
          onPressed: () async {
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url));
            } else {
              throw 'Could not launch ${Uri.parse(url)}';
            }
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          icon: const Icon(Icons.arrow_back),
          label: Text(
            urlName,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ),
    );
  }
}
