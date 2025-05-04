import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:look_it_up/constants/app_route.dart';
import 'package:look_it_up/screens/definition/definitions_page.dart';
import 'package:look_it_up/screens/home/home_page.dart';

final GoRouter routerConfig = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: AppRoute.home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage(); // Replace with your actual HomePage widget
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'definitions/:word', // Dynamic route for definitions
          builder: (BuildContext context, GoRouterState state) {
            final word = state
                .pathParameters['word']!; // Extract the word from the route
            return DefinitionsPage(word: word); // Pass the word to the page
          },
        ),
      ],
    ),
  ],
);
