import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../feature/home/presentation/view/home_page.dart';
import '../../../feature/onboard/presentation/view/onboard_page.dart';
import '../../../feature/splash/presentation/view/splash_page.dart';
import 'routes.dart';

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: Routes.initial,
      name: Routes.initial,
      pageBuilder: (context, state) => const MaterialPage(
        child: SplashPage(),
      ),
    ),
    GoRoute(
      path: Routes.onboard,
      name: Routes.onboard,
      pageBuilder: (context, state) => const MaterialPage(
        child: OnboardingPage(),
      ),
    ),
    GoRoute(
      path: Routes.home,
      name: Routes.home,
      pageBuilder: (context, state) => const MaterialPage(
        child: HomePage(),
      ),
    ),
  ],
);
