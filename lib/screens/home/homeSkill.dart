import 'package:flutter/material.dart';

class HomeSkill extends StatelessWidget {
  @required final String name;

  const HomeSkill({
    super.key, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        name,
        style: Theme
            .of(context)
            .textTheme
            .bodyLarge,
      ),
    );
  }
}