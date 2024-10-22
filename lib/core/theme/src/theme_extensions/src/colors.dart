import 'package:flutter/material.dart';

class _Color {
  static const Color rojo = Color(0xFFDE0A1D);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color timberWolf = Color(0xFFD4D4D4);
  static const Color silver = Color(0xFFBDB7B7);
  static const Color silverHigher = Color(0xFFA4A0A0);

}

class _AppBarColor {
  const _AppBarColor();

  /// Color Code #FFFFFF (White)
  Color get background => _Color.white;

  /// Color Code #000000 (Black)
  Color get icon => _Color.black;

  /// Color Code #FFFFFF (White)
  Color get surfaceTint => _Color.white;

  /// Color Code #000000 (Black)
  Color get title => _Color.black;
}

class _BottomNavigationBarColor {
  const _BottomNavigationBarColor();

  /// Color Code #DE0A1D (Rojo)
  Color get selectedItem => _Color.rojo;

  /// Color Code #BDB7B7 (Silver)
  Color get unselectedItem => _Color.silver;
}


class _TextColor {
  const _TextColor();

  /// Color Code #000000 (black)
  final black = _Color.black;

  /// Color Code #FA5A2A (Giants Orange)
  final primary = _Color.rojo;

  /// Color Code #A4A0A0 (SilverHigher) 
  final secondary = _Color.silverHigher;

  /// Color Code #BDB7B7 (Silver)
  final tertiary = _Color.silver;

  /// Color Code #BDB7B7 (Silver)
  final hint = _Color.silver;
}

class ColorExtension extends ThemeExtension<ColorExtension> {
  /// Color Code #D4D4D4 (timberWolf)
  final border = _Color.timberWolf;

  /// Color Code #FFFFFF (White)
  final fillField = _Color.white;

  /// Color Code #A4A0A0 (Dark Silver)
  final icon = _Color.silverHigher;

  /// Color Code #000000 (black)
  final black = _Color.black;

  /// Color Code #DE0A1D (Rojo)
  final primary = _Color.rojo;

  /// Color Code #FFFFFF (White)
  final onPrimary = _Color.white;

  /// Color Code #FFFFFF (White)
  final background = _Color.white;

  /// Color Code #FFFFFF (White)
  final onSurfaceLow = _Color.white;

  /// Color Code #FFFFFF (White)
  final scaffoldBackground = _Color.white;

  final appBar = const _AppBarColor();
  final bottomNavbar = const _BottomNavigationBarColor();
  final text = const _TextColor();

  const ColorExtension();

  @override
  ThemeExtension<ColorExtension> copyWith() => const ColorExtension();

  @override
  ThemeExtension<ColorExtension> lerp(other, t) => const ColorExtension();
}
