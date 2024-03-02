import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:url_strategy/url_strategy.dart';

import 'configs/colorConfig.dart';
import 'configs/textConfig.dart';
import 'configs/routeConfig.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  setPathUrlStrategy();

  runApp(
    EasyLocalization(
      path: "assets/translations",
      fallbackLocale: const Locale('en', 'US'),
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('th', 'TH'),
      ],
      child: const LemonSensei(),
    ),
  );
}

class LemonSensei extends StatelessWidget {
  const LemonSensei({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: appColorTheme,
        textTheme: appTextTheme,
      ),
      routerConfig: router,
    );
  }
}
