import 'package:flutter/material.dart';
import 'package:lemonsensei_home/components/header.dart';

import '../components/drawerMenu.dart';
import '../components/headerMobile.dart';

class NotFound404 extends StatelessWidget {
  const NotFound404({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: screenWidth < 600 ? const HeaderMobile() : const Header()),
      drawer: screenWidth < 600 ? const DrawerMenu() : null,
      body: Center(),
    );
  }
}
