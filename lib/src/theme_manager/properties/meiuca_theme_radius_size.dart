import 'package:flutter/material.dart';

import '../meiuca_theme_property_data.dart';
import '../meiuca_theme_property_data_attributes.dart';

class MeiucaThemeRadiusSize {
  final Radius none;
  final Radius sm;
  final Radius md;
  final Radius lg;
  final Radius pill;
  final Radius circular; // TODO: IMPROVE RADIUS BY PERCENT

  static const String _none = 'none';
  static const String _sm = 'sm';
  static const String _md = 'md';
  static const String _lg = 'lg';
  static const String _pill = 'pill';
  static const String _circular = 'circular';

  MeiucaThemeRadiusSize({
    required this.none,
    required this.sm,
    required this.md,
    required this.lg,
    required this.pill,
    required this.circular,
  });

  MeiucaThemeRadiusSize.fromJSON(Map<String, dynamic> json)
      : none = _getValueInRadius(json[_none]),
        sm = _getValueInRadius(json[_sm]),
        md = _getValueInRadius(json[_md]),
        lg = _getValueInRadius(json[_lg]),
        pill = _getValueInRadius(json[_pill]),
        circular = _getValueInRadius(json[_circular]);

  Map<String, dynamic> toJSON() => {
        _none: _createPropertyData(none).toJSON(),
        _sm: _createPropertyData(sm).toJSON(),
        _md: _createPropertyData(md).toJSON(),
        _lg: _createPropertyData(lg).toJSON(),
        _pill: _createPropertyData(pill).toJSON(),
        _circular: _createPropertyData(circular, true).toJSON(),
      };

  static Radius _getValueInRadius(Map<String, dynamic> json) {
    final property = MeiucaThemePropertyData.fromJSON(json);
    final value = property.value.replaceAll('px', '').replaceAll('%', '');
    final doubleValue = double.tryParse(value) ?? 0.0;

    return Radius.circular(doubleValue);
  }

  static MeiucaThemePropertyData _createPropertyData(
    Radius value, [
    bool isPercent = false,
  ]) {
    final valueType = isPercent ? '%' : 'px';
    final property = MeiucaThemePropertyData(
      value: '${value.x}$valueType',
      attributes: MeiucaThemePropertyDataAttributes(
        category: 'size',
        type: 'radius',
      ),
    );

    return property;
  }
}
