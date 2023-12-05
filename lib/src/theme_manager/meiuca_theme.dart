import '../../meiuca_components.dart';

class MeiucaTheme {
  final package = 'meiuca_components';
  final MeiucaThemeBorderSize borderSizes;
  final MeiucaThemeOpacityLevel opacityLevels;
  final MeiucaThemeSpacingSize spacingSizes;
  final MeiucaThemeSpacingSquishSize spacingSquishSizes;
  final MeiucaThemeRadiusSize radiusSizes;

  final MeiucaThemeFontSize fontSizes;
  final MeiucaThemeFontFamily fontFamilies;
  final MeiucaThemeFontWeight fontWeights;

  final MeiucaThemeLineHeight lineHeights;
  final MeiucaThemeBrandColor brandColors;
  final MeiucaThemeColorIntensity neutralColors;

  static const String _border = 'border';
  static const String _size = 'size';

  static const String _opacity = 'opacity';
  static const String _level = 'level';

  static const String _spacing = 'spacing';
  static const String _spacingSquish = 'spacing_squish';
  static const String _radius = 'radius';

  static const String _line = 'line';
  static const String _height = 'height';

  static const String _color = 'color';
  static const String _brand = 'brand';
  static const String _neutral = 'neutral';

  static const String _font = 'font';
  static const String _family = 'family';
  static const String _weight = 'weight';

  MeiucaTheme({
    required this.borderSizes,
    required this.opacityLevels,
    required this.spacingSizes,
    required this.spacingSquishSizes,
    required this.radiusSizes,
    required this.lineHeights,
    required this.brandColors,
    required this.neutralColors,
    required this.fontSizes,
    required this.fontFamilies,
    required this.fontWeights,
  });

  MeiucaTheme.fromJSON(Map<String, dynamic> json)
      : borderSizes = MeiucaThemeBorderSize.fromJSON(json[_border][_size]),
        opacityLevels =
            MeiucaThemeOpacityLevel.fromJSON(json[_opacity][_level]),
        spacingSizes = MeiucaThemeSpacingSize.fromJSON(json[_spacing][_size]),
        spacingSquishSizes =
            MeiucaThemeSpacingSquishSize.fromJSON(json[_spacingSquish][_size]),
        radiusSizes = MeiucaThemeRadiusSize.fromJSON(json[_radius][_size]),
        lineHeights = MeiucaThemeLineHeight.fromJSON(json[_line][_height]),
        brandColors = MeiucaThemeBrandColor.fromJSON(json[_brand][_color]),
        neutralColors =
            MeiucaThemeColorIntensity.fromJSON(json[_neutral][_color]),
        fontSizes = MeiucaThemeFontSize.fromJSON(json[_font][_size]),
        fontFamilies = MeiucaThemeFontFamily.fromJSON(json[_font][_family]),
        fontWeights = MeiucaThemeFontWeight.fromJSON(json[_font][_weight]);

  toJSON() => {
        _border: {_size: borderSizes.toJSON()},
        _opacity: {_level: opacityLevels.toJSON()},
        _spacing: {_size: spacingSizes.toJSON()},
        _spacingSquish: {_size: spacingSquishSizes.toJSON()},
        _radius: {_size: radiusSizes.toJSON()},
        _line: {_height: lineHeights.toJSON()},
        _font: {
          _size: fontSizes.toJSON(),
          _family: fontFamilies.toJSON(),
          _weight: fontWeights.toJSON(),
        },
        _brand: {_color: brandColors.toJSON()},
        _neutral: {_color: neutralColors.toJSON()},
      };
}
