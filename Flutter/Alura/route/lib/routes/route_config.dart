import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/detail_screen.dart';

class RouteConfig extends StatelessWidget {
  RouteConfig({super.key});

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (
          BuildContext context,
          GoRouterState state,
        ) {
          return const HomeScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'details',
            builder: (
              BuildContext context,
              GoRouterState state,
            ) {
              return const DetailScreen();
            },
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
