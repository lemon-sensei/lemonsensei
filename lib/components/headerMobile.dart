import 'package:flutter/material.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text("LemonSensei",
          style: TextStyle(
            fontFamily: "KodeMono",
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
