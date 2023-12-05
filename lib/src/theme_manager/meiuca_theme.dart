import 'properties/meiuca_theme_border_size.dart';
import 'properties/meiuca_theme_opacity_level.dart';

class MeiucaTheme {
  final MeiucaThemeBorderSize borderSizes;
  final MeiucaThemeOpacityLevel opacityLevels;

  static const String _border = 'border';
  static const String _size = 'size';

  static const String _opacity = 'opacity';
  static const String _level = 'level';

  MeiucaTheme({
    required this.borderSizes,
    required this.opacityLevels,
  });

  MeiucaTheme.fromJSON(Map<String, dynamic> json)
      : borderSizes = MeiucaThemeBorderSize.fromJSON(json[_border][_size]),
        opacityLevels =
            MeiucaThemeOpacityLevel.fromJSON(json[_opacity][_level]);

  toJSON() => {
        _border: {_size: borderSizes.toJSON()},
        _opacity: {_level: opacityLevels.toJSON()},
      };
}
