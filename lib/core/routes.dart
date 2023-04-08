import 'package:flutter/material.dart';
import 'package:just_the_tip/pages/home_page.dart';

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.route:
        return MaterialPageRoute(builder: (_) =>const HomePage());
      default:
        throw UnimplementedError('Route not found');
    }
  }
}
