import 'meiuca_theme_property_data_attributes.dart';

class MeiucaThemePropertyData {
  final String value;
  final MeiucaThemePropertyDataAttributes attributes;

  static const String _value = 'value';
  static const String _attributes = 'attributes';

  MeiucaThemePropertyData({
    required this.value,
    required this.attributes,
  });

  MeiucaThemePropertyData.fromJSON(Map<String, dynamic> json)
      : value = (json[_value] as String?) ?? '',
        attributes = MeiucaThemePropertyDataAttributes.fromJSON(
          json[_attributes],
        );

  toJSON() => {
        _value: value,
        _attributes: attributes.toJSON(),
      };
}
