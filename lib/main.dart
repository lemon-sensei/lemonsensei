import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lemonsensei_home/screens/accomplishments.dart';
import 'package:lemonsensei_home/screens/articles.dart';
import 'package:lemonsensei_home/screens/contact.dart';
import 'package:lemonsensei_home/screens/home.dart';
import 'package:lemonsensei_home/screens/resume.dart';

import 'package:url_strategy/url_strategy.dart';
import 'package:appwrite/appwrite.dart';

import 'configs/colorConfig.dart';
import 'configs/textConfig.dart';
import 'configs/routeConfig.dart';

void main() {
  setPathUrlStrategy();
  runApp(const LemonSensei());

  Client client = Client();
  client
      .setEndpoint('https://cloud.appwrite.io/v1')
      .setProject('lemonsensei-home')
      .setSelfSigned(
          status:
              true); // For self signed certificates, only use for development
}

class LemonSensei extends StatelessWidget {
  const LemonSensei({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: appColorTheme,
        textTheme: appTextTheme,
      ),
      routerConfig: router,
    );
  }
}
