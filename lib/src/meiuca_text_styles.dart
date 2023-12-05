import 'package:flutter/material.dart';

import '../meiuca_components.dart';

class MeiucaTextStyles {
  static TextStyle headingSmall({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      TextStyle(
        fontSize: meiucaFontSizes.lg,
        fontWeight: meiucaFontWeights.bold,
        fontFamily: meiucaFontFamilies.highlight,
        package: meiucaTheme.package,
        height: meiucaLineHeights.distant,
        color: meiucaNeutralColors.one,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
        height: lineHeight,
      );

  static TextStyle subtitleSmall({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      TextStyle(
        fontSize: meiucaFontSizes.md,
        fontWeight: meiucaFontWeights.medium,
        fontFamily: meiucaFontFamilies.highlight,
        package: meiucaTheme.package,
        height: meiucaLineHeights.medium,
        color: meiucaNeutralColors.two,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
        height: lineHeight,
      );

  static TextStyle paragraph({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      TextStyle(
        fontSize: meiucaFontSizes.xs,
        fontWeight: meiucaFontWeights.regular,
        fontFamily: meiucaFontFamilies.highlight,
        package: meiucaTheme.package,
        height: meiucaLineHeights.distant,
        color: meiucaNeutralColors.two,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
        height: lineHeight,
      );
}
