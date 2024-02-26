import 'package:flutter/material.dart';
import 'package:lemonsensei_home/components/header.dart';

import '../components/drawerMenu.dart';
import '../components/headerMobile.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: screenWidth < 600 ? const HeaderMobile() : const Header(),
      ),
      drawer: screenWidth < 600 ? const DrawerMenu() : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Center(
              child: Text(
                "• LemonSensei •",
                style: TextStyle(
                  fontFamily: "KodeMono",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                "Adventure Journal",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
