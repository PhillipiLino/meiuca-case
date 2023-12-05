import 'border/meiuca_theme_border_size.dart';

class MeiucaTheme {
  final MeiucaThemeBorderSize borderSizes;

  static const String _border = 'border';
  static const String _size = 'size';

  MeiucaTheme({
    required this.borderSizes,
  });

  MeiucaTheme.fromJSON(Map<String, dynamic> json)
      : borderSizes = MeiucaThemeBorderSize.fromJSON(json[_border][_size]);

  toJSON() => {
        _border: {_size: borderSizes.toJSON()},
      };
}
