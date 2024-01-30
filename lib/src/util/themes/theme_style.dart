import 'package:flutter/material.dart';
import 'package:hive/src/util/themes/colors_palette.dart';
import 'package:hive/src/util/themes/text_styles.dart';

class ThemeStyle extends ThemeExtension<ThemeStyle> {
  ThemeStyle({
    required this.colors,
    required this.styles,
    required this.brightness,
  });

  final ColorsPalette colors;
  final TextStyles styles;
  final Brightness brightness;

  @override
  ThemeExtension<ThemeStyle> copyWith() => this;

  @override
  ThemeExtension<ThemeStyle> lerp(
    ThemeExtension<ThemeStyle>? other,
    double t,
  ) =>
      this;
}
