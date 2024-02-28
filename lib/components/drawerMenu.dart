import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                ),
                const Text(
                  "LemonSensei",
                  style: TextStyle(
                    fontFamily: "KodeMono",
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "drawer-menu.personal-archive".tr(),
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
            ),
          ),
          ListTile(
            onTap: () {
              context.go("/");
            },
            leading: const Icon(FontAwesomeIcons.house),
            title: Text(
              "drawer-menu.home".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            onTap: () {
              context.go("/articles");
            },
            leading: const Icon(FontAwesomeIcons.book),
            title: Text(
              "drawer-menu.articles".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            onTap: () {
              context.go("/accomplishments");
            },
            leading: const Icon(FontAwesomeIcons.solidBookmark),
            title: Text(
              "drawer-menu.accomplishments".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            onTap: () {
              context.go("/resume");
            },
            leading: const Icon(FontAwesomeIcons.solidFile),
            title: Text(
              "drawer-menu.resume".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            onTap: () {
              context.go("/contact");
            },
            leading: const Icon(FontAwesomeIcons.solidAddressBook),
            title: Text(
              "drawer-menu.contact".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
