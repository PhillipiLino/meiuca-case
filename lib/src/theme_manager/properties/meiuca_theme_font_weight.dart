import 'package:flutter/material.dart';

import '../meiuca_theme_property_data.dart';
import '../meiuca_theme_property_data_attributes.dart';

class MeiucaThemeFontWeight {
  final FontWeight bold;
  final FontWeight medium;
  final FontWeight regular;

  static const String _bold = 'bold';
  static const String _medium = 'medium';
  static const String _regular = 'regular';

  MeiucaThemeFontWeight({
    required this.bold,
    required this.medium,
    required this.regular,
  });

  MeiucaThemeFontWeight.fromJSON(Map<String, dynamic> json)
      : bold = _getValueInFontWeight(json[_bold]),
        medium = _getValueInFontWeight(json[_medium]),
        regular = _getValueInFontWeight(json[_regular]);

  Map<String, dynamic> toJSON() => {
        _bold: _createPropertyData(bold).toJSON(),
        _medium: _createPropertyData(medium).toJSON(),
        _regular: _createPropertyData(regular).toJSON(),
      };

  static FontWeight _getValueInFontWeight(Map<String, dynamic> json) {
    final property = MeiucaThemePropertyData.fromJSON(json);
    final value = property.value.replaceAll('px', '');
    final intValue = int.tryParse(value) ?? 400;

    return FontWeight.values.firstWhere(
      (element) => element.value == intValue,
      orElse: () => FontWeight.w400,
    );
  }

  static MeiucaThemePropertyData _createPropertyData(FontWeight value) {
    final intValue = value.value;
    final property = MeiucaThemePropertyData(
      value: '$intValue',
      attributes: MeiucaThemePropertyDataAttributes(
        category: 'weight',
        type: 'font',
      ),
    );

    return property;
  }
}
