import 'package:flutter/material.dart';

import 'models/producer_model.dart';

import 'screens/favorites_screen.dart';
import 'screens/package_details_screen.dart';
import 'screens/payment_screen.dart';
import 'screens/producer_details_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/singup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';

import 'core/app_colors.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case 'login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case 'sing-up':
        return MaterialPageRoute(builder: (_) => SingupScreen());
      case 'favorites':
        return MaterialPageRoute(builder: (_) => FavoritesScreen());
      case 'profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case 'payment':
        return MaterialPageRoute(builder: (_) => PaymentScreen());
      case 'producer-details':
        if (args is Producer) {
          return MaterialPageRoute(
            builder: (_) => ProducerDetailsScreen(producer: args),
          );
        }
        return _erroRoute();

      case 'package-details':
        if (args is Map) {
          return MaterialPageRoute(
            builder: (_) => PackageDetailsScreen(
              package: args['package'],
              producer: args['producer'],
            ),
          );
        }
        return _erroRoute();

      default:
        _erroRoute();
    }
    return _erroRoute();
  }

  static Route<dynamic> _erroRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.green,
            title: const Text('Erro'),
          ),
          body: const Center(
            child: Text('Erro, rota não encontrada!'),
          ),
        );
      },
    );
  }
}
