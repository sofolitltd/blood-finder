import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
  ],
);
