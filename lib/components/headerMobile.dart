import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:universal_html/html.dart' as html;

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var currentPath = GoRouter.of(context).routeInformationProvider.value.uri;

    return AppBar(
      centerTitle: true,
      title: InkWell(
        onTap: () {
          context.go("/");
        },
        child: const Text("LemonSensei",
            style: TextStyle(
              fontFamily: "KodeMono",
              fontWeight: FontWeight.bold,
            )),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 10,
          ),
          child: TextButton(
            onPressed: () async {
              if (context.locale.toString() == "en_US") {
                context.setLocale(const Locale('th', 'TH'));
              } else if (context.locale.toString() == "th_TH") {
                context.setLocale(const Locale('en', 'US'));
              }

              await Future.delayed(const Duration(milliseconds: 50));
              html.window.location.reload();
            },
            child: Text(
              "main-menu.lang".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
      ],
    );
  }
}
