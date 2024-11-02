import 'package:flutter/material.dart';
import 'package:task_app/core/routing/routes.dart';
import 'package:task_app/features/bottom_navigation_bar/presentation/view/bottom_navigation_bar_view.dart';
import 'package:task_app/features/home/presentation/view/home_view.dart';

class AppRoutes {
  Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavigationBarView());
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}