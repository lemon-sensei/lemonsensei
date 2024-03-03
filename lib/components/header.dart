import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:universal_html/html.dart' as html;

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var currentPath = GoRouter.of(context).routeInformationProvider.value.uri;

    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: InkWell(
          onTap: () {
            context.go("/");
          },
          child: const Text(
            "LemonSensei",
            style: TextStyle(
              fontFamily: "KodeMono",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: TextButton(
            onPressed: () {
              context.go("/");
            },
            child: Text(
              "main-menu.home".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(
        //     top: 10,
        //   ),
        //   child: TextButton(
        //     onPressed: () {
        //       context.go("/articles");
        //     },
        //     child: Text(
        //       "main-menu.articles".tr(),
        //       style: Theme.of(context).textTheme.titleSmall,
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: TextButton(
            onPressed: () {
              context.go("/accomplishments");
            },
            child: Text(
              "main-menu.accomplishments".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: TextButton(
            onPressed: () {
              context.go("/resume");
            },
            child: Text(
              "main-menu.resume".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            right: 10,
          ),
          child: TextButton(
            onPressed: () {
              context.go("/contact");
            },
            child: Text(
              "main-menu.contact".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
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
