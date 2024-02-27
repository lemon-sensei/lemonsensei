import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: InkWell(
        onTap: () {
          context.go("/");
        },
        child: const Text("LemonSensei",
            style: TextStyle(
              fontFamily: "KodeMono",
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
