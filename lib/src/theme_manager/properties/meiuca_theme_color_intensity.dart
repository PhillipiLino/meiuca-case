import 'package:flutter/material.dart';

import '../../extensions/color_extensions.dart';
import '../meiuca_theme_property_data.dart';
import '../meiuca_theme_property_data_attributes.dart';

class MeiucaThemeColorIntensity {
  final Color one;
  final Color two;
  final Color three;
  final Color four;
  final Color five;

  static const String _one = '1';
  static const String _two = '2';
  static const String _three = '3';
  static const String _four = '4';
  static const String _five = '5';

  MeiucaThemeColorIntensity({
    required this.one,
    required this.two,
    required this.three,
    required this.four,
    required this.five,
  });

  MeiucaThemeColorIntensity.fromJSON(Map<String, dynamic> json)
      : one = _getValueInColor(json[_one]),
        two = _getValueInColor(json[_two]),
        three = _getValueInColor(json[_three]),
        four = _getValueInColor(json[_four]),
        five = _getValueInColor(json[_five]);

  Map<String, dynamic> toJSON() => {
        _one: _createPropertyData(one).toJSON(),
        _two: _createPropertyData(two).toJSON(),
        _three: _createPropertyData(three).toJSON(),
        _four: _createPropertyData(four).toJSON(),
        _five: _createPropertyData(five).toJSON(),
      };

  static Color _getValueInColor(Map<String, dynamic> json) {
    final property = MeiucaThemePropertyData.fromJSON(json);
    return ColorExtension.fromHex(property.value);
  }

  static MeiucaThemePropertyData _createPropertyData(Color value) {
    final property = MeiucaThemePropertyData(
      value: value.toHex(showAlpha: false),
      attributes: MeiucaThemePropertyDataAttributes(
        category: 'color',
        type: 'brand',
      ),
    );

    return property;
  }
}
