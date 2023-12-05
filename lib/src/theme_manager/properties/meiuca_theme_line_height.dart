import '../meiuca_theme_property_data.dart';
import '../meiuca_theme_property_data_attributes.dart';

class MeiucaThemeLineHeight {
  final double tight;
  final double medium;
  final double distant;
  final double superdistant;

  static const String _tight = 'tight';
  static const String _medium = 'medium';
  static const String _distant = 'distant';
  static const String _superdistant = 'superdistant';

  MeiucaThemeLineHeight({
    required this.tight,
    required this.medium,
    required this.distant,
    required this.superdistant,
  });

  MeiucaThemeLineHeight.fromJSON(Map<String, dynamic> json)
      : tight = _getValueInDouble(json[_tight]),
        medium = _getValueInDouble(json[_medium]),
        distant = _getValueInDouble(json[_distant]),
        superdistant = _getValueInDouble(json[_superdistant]);

  Map<String, dynamic> toJSON() => {
        _tight: _createPropertyData(tight).toJSON(),
        _medium: _createPropertyData(medium).toJSON(),
        _distant: _createPropertyData(distant).toJSON(),
        _superdistant: _createPropertyData(superdistant).toJSON(),
      };

  static double _getValueInDouble(Map<String, dynamic> json) {
    final property = MeiucaThemePropertyData.fromJSON(json);
    final value = property.value.replaceAll('%', '');
    return (double.tryParse(value) ?? 0) / 100;
  }

  static MeiucaThemePropertyData _createPropertyData(double value) {
    final property = MeiucaThemePropertyData(
      value: '${value}px',
      attributes: MeiucaThemePropertyDataAttributes(
        category: 'height',
        type: 'line',
      ),
    );

    return property;
  }
}
