import '../meiuca_theme_property_data.dart';
import '../meiuca_theme_property_data_attributes.dart';

class MeiucaThemeFontSize {
  final double xxxs;
  final double xxs;
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xxl;
  final double xxxl;
  final double display;
  final double giant;

  static const String _xxxs = 'xxxs';
  static const String _xxs = 'xxs';
  static const String _xs = 'xs';
  static const String _sm = 'sm';
  static const String _md = 'md';
  static const String _lg = 'lg';
  static const String _xl = 'xl';
  static const String _xxl = 'xxl';
  static const String _xxxl = 'xxxl';
  static const String _display = 'display';
  static const String _giant = 'giant';

  MeiucaThemeFontSize({
    required this.xxxs,
    required this.xxs,
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.xxl,
    required this.xxxl,
    required this.display,
    required this.giant,
  });

  MeiucaThemeFontSize.fromJSON(Map<String, dynamic> json)
      : xxxs = _getValueInDouble(json[_xxxs]),
        xxs = _getValueInDouble(json[_xxs]),
        xs = _getValueInDouble(json[_xs]),
        sm = _getValueInDouble(json[_sm]),
        md = _getValueInDouble(json[_md]),
        lg = _getValueInDouble(json[_lg]),
        xl = _getValueInDouble(json[_xl]),
        xxl = _getValueInDouble(json[_xxl]),
        xxxl = _getValueInDouble(json[_xxxl]),
        display = _getValueInDouble(json[_display]),
        giant = _getValueInDouble(json[_giant]);

  Map<String, dynamic> toJSON() => {
        _xxxs: _createPropertyData(xxxs).toJSON(),
        _xxs: _createPropertyData(xxs).toJSON(),
        _xs: _createPropertyData(xs).toJSON(),
        _sm: _createPropertyData(sm).toJSON(),
        _md: _createPropertyData(md).toJSON(),
        _lg: _createPropertyData(lg).toJSON(),
        _xl: _createPropertyData(xl).toJSON(),
        _xxl: _createPropertyData(xxl).toJSON(),
        _xxxl: _createPropertyData(xxxl).toJSON(),
        _display: _createPropertyData(display).toJSON(),
        _giant: _createPropertyData(giant).toJSON(),
      };

  static double _getValueInDouble(Map<String, dynamic> json) {
    final property = MeiucaThemePropertyData.fromJSON(json);
    final value = property.value.replaceAll('px', '');
    return double.tryParse(value) ?? 0;
  }

  static MeiucaThemePropertyData _createPropertyData(double value) {
    final property = MeiucaThemePropertyData(
      value: '${value}px',
      attributes: MeiucaThemePropertyDataAttributes(
        category: 'size',
        type: 'font',
      ),
    );

    return property;
  }
}
