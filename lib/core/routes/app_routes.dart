import 'package:flutter/material.dart';
import 'package:podowon_church_app/features/sign/views/sign_page.dart';

import '../../features/setting/views/setting_tab_not_login.dart';
import '../../features/worship/views/announcements_page.dart';
import '../../features/home/views/home_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String worship = '/worship';
  static const String signUp = '/signUp';
  static const String login = '/login';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case worship:
        return MaterialPageRoute(builder: (_) => const WorshipPage());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case signUp :
        return MaterialPageRoute(builder: (_) => const SignPage());
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
