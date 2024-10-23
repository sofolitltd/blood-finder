import 'package:blood_finder/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/services/router/routes.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.network(
                  'https://www.svgrepo.com/show/521512/blood-type.svg',
                  height: 100,
                  color: context.color.primary,
                ),
                const Gap(100),
                const CustomTextFormField(
                  hintText: 'Email',
                ),
                const Gap(20),
                const CustomTextFormField(
                  hintText: 'Password',
                  obscureText: true,
                ),
                const Gap(30),
                FilledButton(
                  onPressed: () {
                    context.pushReplacementNamed(Routes.home);
                  },
                  child: const Text('Login'),
                ),
                const Gap(30),
                Text(
                  'New to App?',
                  style: context.textStyle.body14Regular,
                ),
                const Gap(16),
                OutlinedButton(
                  onPressed: () {
                    context.pushNamed(Routes.registration);
                  },
                  child: const Text('Create new Account'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
