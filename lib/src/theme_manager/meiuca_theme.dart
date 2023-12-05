import 'properties/meiuca_theme_border_size.dart';
import 'properties/meiuca_theme_opacity_level.dart';
import 'properties/meiuca_theme_spacing_size.dart';

class MeiucaTheme {
  final MeiucaThemeBorderSize borderSizes;
  final MeiucaThemeOpacityLevel opacityLevels;
  final MeiucaThemeSpacingSize spacingSizes;

  static const String _border = 'border';
  static const String _size = 'size';

  static const String _opacity = 'opacity';
  static const String _level = 'level';

  static const String _spacing = 'spacing';

  MeiucaTheme({
    required this.borderSizes,
    required this.opacityLevels,
    required this.spacingSizes,
  });

  MeiucaTheme.fromJSON(Map<String, dynamic> json)
      : borderSizes = MeiucaThemeBorderSize.fromJSON(json[_border][_size]),
        opacityLevels =
            MeiucaThemeOpacityLevel.fromJSON(json[_opacity][_level]),
        spacingSizes = MeiucaThemeSpacingSize.fromJSON(json[_spacing][_size]);

  toJSON() => {
        _border: {_size: borderSizes.toJSON()},
        _opacity: {_level: opacityLevels.toJSON()},
        _spacing: {_size: spacingSizes.toJSON()},
      };
}
