import '../meiuca_theme_property_data.dart';
import '../meiuca_theme_property_data_attributes.dart';

class MeiucaThemeFontFamily {
  final String highlight;

  static const String _highlight = 'highlight';

  MeiucaThemeFontFamily({
    required this.highlight,
  });

  MeiucaThemeFontFamily.fromJSON(Map<String, dynamic> json)
      : highlight = _getValueInString(json[_highlight]);

  Map<String, dynamic> toJSON() => {
        _highlight: _createPropertyData(highlight).toJSON(),
      };

  static String _getValueInString(Map<String, dynamic> json) {
    final property = MeiucaThemePropertyData.fromJSON(json);
    return property.value.substring(1, property.value.length - 1);
  }

  static MeiucaThemePropertyData _createPropertyData(String value) {
    final property = MeiucaThemePropertyData(
      value: value,
      attributes: MeiucaThemePropertyDataAttributes(
        category: 'family',
        type: 'font',
      ),
    );

    return property;
  }
}
