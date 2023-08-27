import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'views/screen_ui/food.dart';
import 'views/screen_ui/food_details_page.dart';
import 'views/screen_ui/home_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/food',
      routes: {
        '/': (context) => const HomePage(),
        '/food': (context) => const FoodPage(),
        '/food-details': (context) => const FoodDetailsPage(),
      },
    );
  }
}
