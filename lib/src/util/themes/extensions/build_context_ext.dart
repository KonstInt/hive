import 'package:flutter/material.dart';
import 'package:hive/src/util/themes/colors_palette.dart';
import 'package:hive/src/util/themes/text_styles.dart';
import 'package:hive/src/util/themes/theme_style.dart';

extension BuildContextExt on BuildContext {
  ColorsPalette get colors => Theme.of(this).extension<ThemeStyle>()!.colors;

  TextStyles get textStyles => Theme.of(this).extension<ThemeStyle>()!.styles;

  Brightness get brightness =>
      Theme.of(this).extension<ThemeStyle>()!.brightness;
}
