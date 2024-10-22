import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/services/assets_manager/assets_manager.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SvgPicture.asset(
        LogoManager.logo,
        width: 107,
        height: 77,
      ),
    );
  }
}
