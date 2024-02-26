import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:lemonsensei_home/components/headerMobile.dart';

import '../components/drawerMenu.dart';
import '../components/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    SystemChrome.setApplicationSwitcherDescription(
        const ApplicationSwitcherDescription(label: "LemonSensei - Home"));

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: screenWidth < 600 ? const HeaderMobile() : const Header(),
      ),
      drawer: screenWidth < 600 ? const DrawerMenu() : null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 25,
              ),
              child: CircleAvatar(
                radius: 50,
              ),
            ),
          ),
          Center(
            child: Text(
              'welcome',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Center(
            child: Text(
              "LemonSensei - Personal Archive",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 100,
              left: 25,
              right: 25,
            ),
            child: Center(
              child: Text(
                "If you wanted to know about me",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          Center(
            child: Text(
              "Please consider read my resume",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  context.go("/resume");
                },
                child: Text(
                  "Press with gentle",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
