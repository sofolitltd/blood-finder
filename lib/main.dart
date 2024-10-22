import 'package:blood_finder/core/theme/theme.dart';
import 'package:flutter/material.dart';

import 'core/services/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1.5,
      child: MaterialApp.router(
        theme: context.themeData,
        routerConfig: goRouter,
      ),
    );
  }
}
