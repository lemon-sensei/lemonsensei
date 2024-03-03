import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lemonsensei_home/components/header.dart';

import '../components/drawerMenu.dart';
import '../components/headerMobile.dart';

class NotFound404 extends StatelessWidget {
  const NotFound404({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "ขออภัย! ไม่พบหน้าที่คุณต้องการ",
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.go("/");
              },
              child: Text(
                "กลับไปหน้าแรก",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
