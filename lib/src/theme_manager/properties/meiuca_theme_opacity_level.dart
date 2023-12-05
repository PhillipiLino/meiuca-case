import '../meiuca_theme_property_data.dart';
import '../meiuca_theme_property_data_attributes.dart';

class MeiucaThemeOpacityLevel {
  final double semiopaque;
  final double intense;
  final double medium;
  final double light;
  final double semitransparent;

  static const String _semiopaque = 'semiopaque';
  static const String _intense = 'intense';
  static const String _medium = 'medium';
  static const String _light = 'light';
  static const String _semitransparent = 'semitransparent';

  MeiucaThemeOpacityLevel({
    required this.semiopaque,
    required this.intense,
    required this.medium,
    required this.light,
    required this.semitransparent,
  });

  MeiucaThemeOpacityLevel.fromJSON(Map<String, dynamic> json)
      : semiopaque = _getValueInDouble(json[_semiopaque]),
        intense = _getValueInDouble(json[_intense]),
        medium = _getValueInDouble(json[_medium]),
        light = _getValueInDouble(json[_light]),
        semitransparent = _getValueInDouble(json[_semitransparent]);

  Map<String, dynamic> toJSON() => {
        _semiopaque: _createPropertyData(semiopaque).toJSON(),
        _intense: _createPropertyData(intense).toJSON(),
        _medium: _createPropertyData(medium).toJSON(),
        _light: _createPropertyData(light).toJSON(),
        _semitransparent: _createPropertyData(semitransparent).toJSON(),
      };

  static double _getValueInDouble(Map<String, dynamic> json) {
    final property = MeiucaThemePropertyData.fromJSON(json);
    return double.tryParse(property.value) ?? 0;
  }

  static MeiucaThemePropertyData _createPropertyData(double value) {
    final property = MeiucaThemePropertyData(
      value: value.toString(),
      attributes: MeiucaThemePropertyDataAttributes(
        category: 'level',
        type: 'opacity',
      ),
    );

    return property;
  }
}
