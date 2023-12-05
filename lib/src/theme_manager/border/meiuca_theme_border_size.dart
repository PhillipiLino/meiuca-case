import '../meiuca_theme_property_data.dart';
import '../meiuca_theme_property_data_attributes.dart';

class MeiucaThemeBorderSize {
  final double none;
  final double hairline;
  final double thin;
  final double thick;
  final double heavy;

  static const String _none = 'none';
  static const String _hairline = 'hairline';
  static const String _thin = 'thin';
  static const String _thick = 'thick';
  static const String _heavy = 'heavy';

  MeiucaThemeBorderSize({
    required this.none,
    required this.hairline,
    required this.thin,
    required this.thick,
    required this.heavy,
  });

  MeiucaThemeBorderSize.fromJSON(Map<String, dynamic> json)
      : none = _getSizeInDouble(json[_none]),
        hairline = _getSizeInDouble(json[_hairline]),
        thin = _getSizeInDouble(json[_thin]),
        thick = _getSizeInDouble(json[_thick]),
        heavy = _getSizeInDouble(json[_heavy]);

  Map<String, dynamic> toJSON() => {
        _none: _createPropertyData(none).toJSON(),
        _hairline: _createPropertyData(hairline).toJSON(),
        _thin: _createPropertyData(thin).toJSON(),
        _thick: _createPropertyData(thick).toJSON(),
        _heavy: _createPropertyData(heavy).toJSON(),
      };

  static double _getSizeInDouble(Map<String, dynamic> json) {
    final property = MeiucaThemePropertyData.fromJSON(json);
    final value = property.value.replaceAll('px', '');
    return double.tryParse(value) ?? 0;
  }

  static MeiucaThemePropertyData _createPropertyData(double value) {
    final property = MeiucaThemePropertyData(
      value: '${value}px',
      attributes: MeiucaThemePropertyDataAttributes(
        category: 'size',
        type: 'border',
      ),
    );

    return property;
  }
}
