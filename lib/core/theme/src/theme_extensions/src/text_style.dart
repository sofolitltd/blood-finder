import 'package:flutter/material.dart';

import '../extensions.dart';

class _AppBarText {
  const _AppBarText();

  TextStyle get title => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );
}

class _OnboardingText {
  const _OnboardingText();

  TextStyle get title => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      );

  TextStyle get body => const TextStyle(
        fontSize: 18,
        height: 20 / 14,
        fontWeight: FontWeight.w400,
      );
}

class _ProductText {
  const _ProductText();

  TextStyle get title => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      );

  TextStyle get name => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      );

  TextStyle get body => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );
}

class _LinkText {
  const _LinkText();

  TextStyle get text => const TextStyle(
        fontSize: 14,
        height: 24 / 14,
      );
}

class _HintText {
  const _HintText();

  TextStyle get text => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );
}

class _ButtonText {
  const _ButtonText();

  TextStyle get text => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
}

class _ForgotPasswordText {
  const _ForgotPasswordText();

  TextStyle get title => const TextStyle(
        fontSize: 24,
        height: 36 / 24,
        fontWeight: FontWeight.w600,
      );

  TextStyle get body1 => const TextStyle(
        fontSize: 14,
        height: 24 / 14,
      );
}

class TextStyleExtension extends ThemeExtension<TextStyleExtension> {
  const TextStyleExtension(this.color);

  final ColorExtension color;

  TextStyle get fieldLabel {
    return const TextStyle(
      fontSize: 14,
      height: 24 / 14,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get fieldHint {
    return TextStyle(
      fontSize: 16,
      color: color.text.hint,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get title24Semibold {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get title20Medium {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: color.text.black,
    );
  }

  TextStyle get body16Light {
    return TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w300,
      color: color.text.black,
    );
  }

  TextStyle get body16Regular {
    return TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w400,
      color: color.text.black,
    );
  }

  TextStyle get body16Medium {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color.text.black,
    );
  }

  TextStyle get body16Bold {
    return TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w700,
      color: color.text.black,
    );
  }

  TextStyle get body14Regular {
    return TextStyle(
      fontSize: 14,
      height: 24 / 14,
      fontWeight: FontWeight.w400,
      color: color.text.black,
    );
  }

  TextStyle get body14Secondary {
    return TextStyle(
      fontSize: 14,
      height: 24 / 14,
      fontWeight: FontWeight.w400,
      color: color.text.secondary,
    );
  }

  final appBar = const _AppBarText();
  final linkText = const _LinkText();
  final hintText = const _HintText();
  final buttonText = const _ButtonText();
  final onboarding = const _ProductText();
  final forgotPassword = const _ForgotPasswordText();
  final productText = const _ProductText();

  @override
  copyWith() => const TextStyleExtension(ColorExtension());

  @override
  lerp(other, t) => const TextStyleExtension(ColorExtension());
}
