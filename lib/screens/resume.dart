import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lemonsensei_home/components/header.dart';

import '../components/drawerMenu.dart';
import '../components/headerMobile.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

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
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage:
                      AssetImage("assets/images/lemonsensei-profile.jpg"),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "Inthad Yuvajita",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
            Center(
              child: Text(
                "Computer Technical Officer, Practitioner Level",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
