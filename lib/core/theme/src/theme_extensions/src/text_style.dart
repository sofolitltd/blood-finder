import 'package:flutter/material.dart';

import '../extensions.dart';


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
      fontSize: 14,
      color: color.text.hint,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get title24Semibold {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: color.text.black,
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

  @override
  copyWith() => const TextStyleExtension(ColorExtension());

  @override
  lerp(other, t) => const TextStyleExtension(ColorExtension());
}
