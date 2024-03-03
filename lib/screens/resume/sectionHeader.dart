import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  @required
  final Icon headerIcon;
  @required
  final String headerName;

  const SectionHeader({
    super.key,
    required this.headerName,
    required this.headerIcon,
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
          ),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: headerIcon,
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
            style: Theme.of(context).textTheme.headlineMedium,
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
