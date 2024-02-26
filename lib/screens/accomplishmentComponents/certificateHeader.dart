import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CertificateHeader extends StatelessWidget {
  @required
  final String headerName;

  const CertificateHeader({
    super.key,
    required this.headerName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 15,
            left: 25,
          ),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(FontAwesomeIcons.solidBookmark),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 25,
          ),
          child: Text(
            headerName,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 25,
            left: 25,
            right: 250,
          ),
          child: Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}