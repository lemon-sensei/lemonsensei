import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lemonsensei_home/screens/404NotFound.dart';
import 'package:lemonsensei_home/screens/accomplishments.dart';
import 'package:lemonsensei_home/screens/articles.dart';
import 'package:lemonsensei_home/screens/contact.dart';
import 'package:lemonsensei_home/screens/home.dart';
import 'package:lemonsensei_home/screens/resume.dart';

final router = GoRouter(
  errorBuilder: (context, state) => const NotFound404(),
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/articles",
      builder: (context, state) => const ArticlePage(),
    ),
    GoRoute(
      path: "/accomplishments",
      builder: (context, state) => const AccomplishmentsPage(),
    ),
    GoRoute(
      path: "/resume",
      builder: (context, state) => const ResumePage(),
    ),
    GoRoute(
      path: "/contact",
      builder: (context, state) => const ContactPage(),
    ),
  ],
);
