import 'package:flutter/material.dart';

class ResumeContact extends StatelessWidget {
  @required
  final Icon icon;
  @required
  final String text;

  const ResumeContact({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 25),
          Text(text, style: Theme.of(context).textTheme.titleSmall)
        ],
      ),
    );
  }
}