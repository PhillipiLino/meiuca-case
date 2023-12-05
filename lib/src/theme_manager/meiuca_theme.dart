import 'properties/meiuca_theme_border_size.dart';
import 'properties/meiuca_theme_brand_color.dart';
import 'properties/meiuca_theme_color_intensity.dart';
import 'properties/meiuca_theme_line_height.dart';
import 'properties/meiuca_theme_opacity_level.dart';
import 'properties/meiuca_theme_radius_size.dart';
import 'properties/meiuca_theme_spacing_size.dart';
import 'properties/meiuca_theme_spacing_squish_size.dart';

class MeiucaTheme {
  final MeiucaThemeBorderSize borderSizes;
  final MeiucaThemeOpacityLevel opacityLevels;
  final MeiucaThemeSpacingSize spacingSizes;
  final MeiucaThemeSpacingSquishSize spacingSquishSizes;
  final MeiucaThemeRadiusSize radiusSizes;
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

  MeiucaTheme({
    required this.borderSizes,
    required this.opacityLevels,
    required this.spacingSizes,
    required this.spacingSquishSizes,
    required this.radiusSizes,
    required this.lineHeights,
    required this.brandColors,
    required this.neutralColors,
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
            MeiucaThemeColorIntensity.fromJSON(json[_neutral][_color]);

  toJSON() => {
        _border: {_size: borderSizes.toJSON()},
        _opacity: {_level: opacityLevels.toJSON()},
        _spacing: {_size: spacingSizes.toJSON()},
        _spacingSquish: {_size: spacingSquishSizes.toJSON()},
        _radius: {_size: radiusSizes.toJSON()},
        _line: {_height: lineHeights.toJSON()},
        _brand: {_color: brandColors.toJSON()},
        _neutral: {_color: neutralColors.toJSON()},
      };
}
