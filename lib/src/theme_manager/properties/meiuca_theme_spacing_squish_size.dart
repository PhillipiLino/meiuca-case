import 'package:flutter/material.dart';

import '../meiuca_theme_property_data.dart';
import '../meiuca_theme_property_data_attributes.dart';

class MeiucaThemeSpacingSquishSize {
  final EdgeInsets quarck;
  final EdgeInsets nano;
  final EdgeInsets xs;
  final EdgeInsets sm;

  static const String _stack = 'stack';
  static const String _vertical = 'v';
  static const String _horizontal = 'h';

  static const String _quarck = 'quarck';
  static const String _nano = 'nano';
  static const String _xs = 'xs';
  static const String _sm = 'sm';

  MeiucaThemeSpacingSquishSize({
    required this.quarck,
    required this.nano,
    required this.xs,
    required this.sm,
  });

  MeiucaThemeSpacingSquishSize.fromJSON(Map<String, dynamic> json)
      : quarck = _getValueInEdgeInsets(json[_quarck]),
        nano = _getValueInEdgeInsets(json[_nano]),
        xs = _getValueInEdgeInsets(json[_xs]),
        sm = _getValueInEdgeInsets(json[_sm]);

  Map<String, dynamic> toJSON() => {
        _quarck: _createPropertyData(quarck),
        _nano: _createPropertyData(nano),
        _xs: _createPropertyData(xs),
        _sm: _createPropertyData(sm),
      };

  static EdgeInsets _getValueInEdgeInsets(Map<String, dynamic> json) {
    final property = MeiucaThemePropertyData.fromJSON(json[_stack]);
    final value = property.value.replaceAll('px', '');
    final valuesList = value.split(' ');
    final vertical = double.tryParse(valuesList.firstOrNull ?? '0') ?? 0;
    final horizontal = double.tryParse(valuesList.lastOrNull ?? '0') ?? 0;

    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }

  static Map<String, dynamic> _createPropertyData(EdgeInsets value) {
    final vertical = value.top;
    final horizontal = value.left;

    final propertyV = MeiucaThemePropertyData(
      value: '${vertical}px',
      attributes: MeiucaThemePropertyDataAttributes(
        category: 'size',
        type: 'spacing_squish',
      ),
    );

    final propertyH = MeiucaThemePropertyData(
      value: '${horizontal}px',
      attributes: MeiucaThemePropertyDataAttributes(
        category: 'size',
        type: 'spacing_squish',
      ),
    );

    final propertyStack = MeiucaThemePropertyData(
      value: '${vertical}px ${horizontal}px',
      attributes: MeiucaThemePropertyDataAttributes(
        category: 'size',
        type: 'spacing_squish',
      ),
    );

    return {
      _vertical: propertyV.toJSON(),
      _horizontal: propertyH.toJSON(),
      _stack: propertyStack.toJSON(),
    };
  }
}
