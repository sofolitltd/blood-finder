part of '../registration_page.dart';

class _LinkText extends StatelessWidget {
  const _LinkText();

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: context.textStyle.body14Regular,
          ),
          TextSpan(
            text: 'Sign In',
            style: context.textStyle.body14Regular.copyWith(
              fontWeight: FontWeight.w700,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.login);
              },
          ),
        ],
      ),
    );
  }
}
