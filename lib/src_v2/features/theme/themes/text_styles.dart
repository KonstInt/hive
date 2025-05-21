import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  const TextStyles({
    required this.title1R,
    required this.title1M,
    required this.title1B,
    required this.title2R,
    required this.title2M,
    required this.title2B,
    required this.headlineR,
    required this.headlineM,
    required this.headlineB,
    required this.bodyR,
    required this.bodyM,
    required this.bodyB,
    required this.bodyBItalic,
    required this.descriptionR,
    required this.descriptionM,
    required this.descriptionB,
    required this.smallR,
    required this.smallM,
    required this.smallB,
    required this.microR,
    required this.microM,
    required this.microB,
  });

  final TextStyle title1R;
  final TextStyle title1M;
  final TextStyle title1B;
  final TextStyle title2R;
  final TextStyle title2M;
  final TextStyle title2B;
  final TextStyle headlineR;
  final TextStyle headlineM;
  final TextStyle headlineB;
  final TextStyle bodyR;
  final TextStyle bodyM;
  final TextStyle bodyB;
  final TextStyle bodyBItalic;
  final TextStyle descriptionR;
  final TextStyle descriptionM;
  final TextStyle descriptionB;
  final TextStyle smallR;
  final TextStyle smallM;
  final TextStyle smallB;
  final TextStyle microR;
  final TextStyle microM;
  final TextStyle microB;
}

class RobotoStyle {
  const RobotoStyle._();

  static const fontFamily = 'Yandex Sans Text';

  static final double title1FontSize = 32.sp;
  static final double title1FontHeight = 34.sp / title1FontSize;
  static final title1R = TextStyle(
    fontFamily: fontFamily,
    fontSize: title1FontSize,
    fontWeight: FontWeight.w400,
    height: title1FontHeight,
  );

  static final title1M = TextStyle(
    fontFamily: fontFamily,
    fontSize: title1FontSize,
    fontWeight: FontWeight.w500,
    height: title1FontHeight,
  );

  static final title1B = TextStyle(
    fontFamily: fontFamily,
    fontSize: title1FontSize,
    fontWeight: FontWeight.w700,
    height: title1FontHeight,
  );

  static final double title2FontSize = 24.sp;
  static final double title2FontHeight = 28.sp / title2FontSize;
  static final title2R = TextStyle(
    fontFamily: fontFamily,
    fontSize: title2FontSize,
    fontWeight: FontWeight.w400,
    height: title2FontHeight,
  );

  static final title2M = TextStyle(
    fontFamily: fontFamily,
    fontSize: title2FontSize,
    fontWeight: FontWeight.w500,
    height: title2FontHeight,
  );

  static final title2B = TextStyle(
    fontFamily: fontFamily,
    fontSize: title2FontSize,
    fontWeight: FontWeight.w700,
    height: title2FontHeight,
  );

  static final double headlineFontSize = 20.sp;
  static final double headlineFontHeight = 24.sp / headlineFontSize;
  static final headlineR = TextStyle(
    fontFamily: fontFamily,
    fontSize: headlineFontSize,
    fontWeight: FontWeight.w400,
    height: headlineFontHeight,
  );

  static final headlineM = TextStyle(
    fontFamily: fontFamily,
    fontSize: headlineFontSize,
    fontWeight: FontWeight.w500,
    height: headlineFontHeight,
  );

  static final headlineB = TextStyle(
    fontFamily: fontFamily,
    fontSize: headlineFontSize,
    fontWeight: FontWeight.w700,
    height: headlineFontHeight,
  );

  static final double bodyFontSize = 16.sp;
  static final double bodyFontHeight = 20.sp / bodyFontSize;
  static final bodyR = TextStyle(
    fontFamily: fontFamily,
    fontSize: bodyFontSize,
    fontWeight: FontWeight.w400,
    height: bodyFontHeight,
  );

  static final bodyM = TextStyle(
    fontFamily: fontFamily,
    fontSize: bodyFontSize,
    fontWeight: FontWeight.w500,
    height: bodyFontHeight,
  );

  static final bodyB = TextStyle(
    fontFamily: fontFamily,
    fontSize: bodyFontSize,
    fontWeight: FontWeight.w700,
    height: bodyFontHeight,
  );

  static final bodyBItalic = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    height: 20.sp / 14.sp,
    fontStyle: FontStyle.italic,
  );

  static final double descriptionFontSize = 14.sp;
  static final double descriptionFontHeight = 18.sp / descriptionFontSize;
  static final descriptionR = TextStyle(
    fontFamily: fontFamily,
    fontSize: descriptionFontSize,
    fontWeight: FontWeight.w400,
    height: descriptionFontHeight,
  );

  static final descriptionM = TextStyle(
    fontFamily: fontFamily,
    fontSize: descriptionFontSize,
    fontWeight: FontWeight.w500,
    height: descriptionFontHeight,
  );

  static final descriptionB = TextStyle(
    fontFamily: fontFamily,
    fontSize: descriptionFontSize,
    fontWeight: FontWeight.w700,
    height: descriptionFontHeight,
  );

  static final double smallFontSize = 12.sp;
  static final double smallFontHeight = 16.sp / smallFontSize;
  static final smallR = TextStyle(
    fontFamily: fontFamily,
    fontSize: smallFontSize,
    fontWeight: FontWeight.w400,
    height: smallFontHeight,
  );

  static final smallM = TextStyle(
    fontFamily: fontFamily,
    fontSize: smallFontSize,
    fontWeight: FontWeight.w500,
    height: smallFontHeight,
  );

  static final smallB = TextStyle(
    fontFamily: fontFamily,
    fontSize: smallFontSize,
    fontWeight: FontWeight.w700,
    height: smallFontHeight,
  );

  static final double microFontSize = 11.sp;
  static final double microFontHeight = 14.sp / microFontSize;
  static final microR = TextStyle(
    fontFamily: fontFamily,
    fontSize: microFontSize,
    fontWeight: FontWeight.w400,
    height: microFontHeight,
  );

  static final microM = TextStyle(
    fontFamily: fontFamily,
    fontSize: microFontSize,
    fontWeight: FontWeight.w500,
    height: microFontHeight,
  );

  static final microB = TextStyle(
    fontFamily: fontFamily,
    fontSize: microFontSize,
    fontWeight: FontWeight.w700,
    height: microFontHeight,
  );
}
