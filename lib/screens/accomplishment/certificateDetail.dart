import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificateDetail extends StatelessWidget {
  @required
  final String name;
  @required
  final String detail_1;
  @required
  final String detail_2;
  @required
  final String urlName;
  @required
  final String url;

  const CertificateDetail({
    super.key,
    required this.name,
    required this.detail_1,
    required this.detail_2,
    required this.urlName,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
          ),
        ),
        child: SizedBox(
          width: 1000,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 25, right: 25),
                      child: Text(
                        name,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 25, right: 25),
                      child: Text(
                        detail_1,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 25),
                      child: Text(
                        detail_2,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    screenWidth > 800
                        ? const SizedBox()
                        : CertificateButton(url: url, urlName: urlName),
                    screenWidth > 800
                        ? const SizedBox()
                        : const SizedBox(height: 25)
                  ],
                ),
              ),
              screenWidth > 800
                  ? CertificateButton(url: url, urlName: urlName)
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class CertificateButton extends StatelessWidget {
  const CertificateButton({
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
        left: 25,
        right: 25,
      ),
      child: url.isNotEmpty
          ? ElevatedButton.icon(
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
              icon: const Icon(
                FontAwesomeIcons.fileCircleCheck,
              ),
              label: Text(
                urlName,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            )
          : null,
    );
  }
}
