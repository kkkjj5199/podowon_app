import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/views/home_page.dart';
import '../../features/sign/views/sign_page.dart';
import '../../features/worship/views/announcements_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/worship',
        builder: (context, state) => const WorshipPage(),
      ),
      GoRoute(
        path: '/signUp',
        builder: (context, state) => const SignPage(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(child: Text('No route defined for ${state.uri}')),
    ),
  );
});
