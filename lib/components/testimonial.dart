import 'package:flutter/material.dart';

class Testimonial extends StatelessWidget {
  @required
  final String path;

  const Testimonial({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    return GridView.count(
      crossAxisCount: screenWidth < 600
          ? 1
          : screenWidth < 800
              ? 2
              : screenWidth < 1200
                  ? 3
                  : 4,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(
        screenWidth < 600
            ? 1
            : screenWidth < 800
                ? 2
                : screenWidth < 1200
                    ? 3
                    : 4,
        (index) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('$path${index + 1}.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
