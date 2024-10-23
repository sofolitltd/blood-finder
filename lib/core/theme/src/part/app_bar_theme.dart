part of '../theme_data.dart';

class _AppBarTheme with ThemeExtensions {
  AppBarTheme call() {
    return AppBarTheme(
      elevation: 1,
      centerTitle: true,
      titleSpacing: 0,
      titleTextStyle: textStyle.body14Regular,
      backgroundColor: color.background,
      surfaceTintColor: color.onSurfaceLow,
      iconTheme: IconThemeData(color: color.appBar.icon),
    );
  }
}
