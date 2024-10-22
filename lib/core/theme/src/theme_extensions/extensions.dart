import 'src/colors.dart';
import 'src/text_style.dart';

export 'src/colors.dart';
export 'src/text_style.dart';

mixin ThemeExtensions {
  final color = const ColorExtension();
  final textStyle = const TextStyleExtension(ColorExtension());
}
