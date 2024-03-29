import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 25,
            left: 50,
            right: 50,
          ),
          child: Divider(
            thickness: 3,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 25,
            bottom: 25,
          ),
          child: Text(
            "footer.copyright".tr(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}