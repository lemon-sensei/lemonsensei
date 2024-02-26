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
                  "Personal Archive",
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
              "Home",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            onTap: () {
              context.go("/articles");
            },
            leading: const Icon(FontAwesomeIcons.book),
            title: Text(
              "Articles",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            onTap: () {
              context.go("/accomplishments");
            },
            leading: const Icon(FontAwesomeIcons.solidBookmark),
            title: Text(
              "Accomplishments",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            onTap: () {
              context.go("/resume");
            },
            leading: const Icon(FontAwesomeIcons.solidFile),
            title: Text(
              "Resume",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            onTap: () {
              context.go("/contact");
            },
            leading: const Icon(FontAwesomeIcons.solidAddressBook),
            title: Text(
              "Contact",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
