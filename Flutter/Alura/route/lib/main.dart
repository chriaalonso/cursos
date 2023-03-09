import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/detail_screen.dart';
import 'screens/home_screen.dart';
import 'routes/route_config.dart';

void main() => runApp(const MyApp());

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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Routes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}
