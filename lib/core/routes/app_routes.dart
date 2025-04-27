import 'package:flutter/material.dart';

import '../../features/worship/views/announcements_page.dart';
import '../../features/home/views/home_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String worship = '/worship';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case worship:
        return MaterialPageRoute(builder: (_) => const WorshipPage());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
