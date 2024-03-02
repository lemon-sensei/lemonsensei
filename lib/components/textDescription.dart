import 'package:flutter/material.dart';

class TextDescription extends StatelessWidget {
  @required
  final String text;

  const TextDescription({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: SizedBox(
        width: 500,
        child: Text(
          text,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}