import 'package:alura/models/package_model.dart';
import 'package:alura/models/producer_model.dart';
import 'package:alura/screens/favorites_screen.dart';
import 'package:alura/screens/login_screen.dart';
import 'package:alura/screens/package_details_screen.dart';
import 'package:alura/screens/payment_screen.dart';
import 'package:alura/screens/producer_details_screen.dart';
import 'package:alura/screens/profile_screen.dart';
import 'package:alura/screens/singup_screen.dart';
import 'package:flutter/material.dart';
import 'package:alura/screens/home_screen.dart';
import 'package:nuvigator/next.dart';
import 'route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      // initialRoute: 'home',
      // onGenerateRoute: RouteGenerator.generateRoute,
      home: Nuvigator.routes(
        initialRoute: 'home',
        screenType: materialScreenType,
        routes: [
          NuRouteBuilder(path: 'home', builder: (_, __, ___) => HomeScreen()),
          NuRouteBuilder(path: 'login', builder: (_, __, ___) => LoginScreen()),
          NuRouteBuilder(
              path: 'sign-up', builder: (_, __, ___) => SingupScreen()),
          NuRouteBuilder(
              path: 'favorites', builder: (_, __, ___) => FavoritesScreen()),
          NuRouteBuilder(
              path: 'profile', builder: (_, __, ___) => ProfileScreen()),
          NuRouteBuilder(
              path: 'payment', builder: (_, __, ___) => PaymentScreen()),
          NuRouteBuilder(
              path: 'producer-details',
              builder: (_, __, ___) => PaymentScreen()),
          NuRouteBuilder(
            path: 'payment',
            builder: (_, __, NuRouteSettings args) {
              final Producer producer = args.rawParameters['producer'];
              return ProducerDetailsScreen(producer: producer);
            },
          ),
          NuRouteBuilder(
            path: 'package-details',
            builder: (_, __, NuRouteSettings args) {
              final Producer producer = args.rawParameters['producer'];
              final Package package = args.rawParameters['package'];

              return PackageDetailsScreen(
                producer: producer,
                package: package,
              );
            },
          ),
        ],
      ),
    );
  }
}
