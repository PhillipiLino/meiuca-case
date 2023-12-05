import 'meiuca_theme_color_intensity.dart';

class MeiucaThemeBrandColor {
  final MeiucaThemeColorIntensity primary;

  static const String _primary = 'primary';

  MeiucaThemeBrandColor({
    required this.primary,
  });

  MeiucaThemeBrandColor.fromJSON(Map<String, dynamic> json)
      : primary = MeiucaThemeColorIntensity.fromJSON(json[_primary]);

  Map<String, dynamic> toJSON() => {
        _primary: primary.toJSON(),
      };
}
