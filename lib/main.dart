import 'package:flutter/material.dart';

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
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: appColorTheme,
        textTheme: appTextTheme,
      ),
      routerConfig: router,
    );
  }
}
