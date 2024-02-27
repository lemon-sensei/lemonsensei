import 'package:flutter/material.dart';

class SkillDetail extends StatelessWidget {
  @required
  final String skillName;
  @required
  final int skillLevel;

  const SkillDetail({
    super.key,
    required this.skillName,
    required this.skillLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 25,
            left: 25,
            right: 25,
          ),
          child: Text(
            skillName,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 25,
            right: 25,
          ),
          child: LinearProgressIndicator(
            value: (skillLevel * 10) / 100,
            minHeight: 10,
          ),
        ),
      ],
    );
  }
}
