import 'package:flutter/material.dart';
import 'package:just_the_tip/core/routes.dart';
import 'package:just_the_tip/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just the tip',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.route,
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
