import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
          bottom: 10,
        ),
        child: CircleAvatar(
          radius: 2,
        ),
      ),
      title: const Padding(
        padding: EdgeInsets.only(
          top: 10,
        ),
        child: Text(
          "LemonSensei",
          style: TextStyle(
            fontFamily: "KodeMono",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: TextButton(
            onPressed: () {
              context.go("/");
            },
            child: Text(
              "Home",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: TextButton(
            onPressed: () {
              context.go("/articles");
            },
            child: Text(
              "Articles",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: TextButton(
            onPressed: () {
              context.go("/accomplishments");
            },
            child: Text(
              "Accomplishments",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: TextButton(
            onPressed: () {
              context.go("/resume");
            },
            child: Text(
              "Resume",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            right: 10,
          ),
          child: TextButton(
            onPressed: () {
              context.go("/contact");
            },
            child: Text(
              "Contact",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
      ],
    );
  }
}
