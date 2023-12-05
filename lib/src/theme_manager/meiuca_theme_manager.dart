library meiuca_components;

import 'package:flutter/material.dart';

import '../extensions/context_extensions.dart';
import 'meiuca_theme.dart';

part 'main_theme.dart';

class MeiucaThemeManager {
  late ThemeMode _themeMode;
  ThemeMode get themeMode => _themeMode;

  late MeiucaTheme _theme;
  MeiucaTheme get theme => _theme;

  static final MeiucaThemeManager shared = MeiucaThemeManager._internal();

  factory MeiucaThemeManager() => shared;

  MeiucaThemeManager._internal() {
    initializeTheme();
  }

  initializeTheme([ThemeMode initialThemeMode = ThemeMode.system]) async {
    setThemeMode(initialThemeMode);
    await resetTheme();
  }

  setThemeByJson(Map<String, dynamic> json, [BuildContext? context]) {
    _theme = MeiucaTheme.fromJSON(json);
    context?.rebuildAllChildren();
  }

  setTheme(MeiucaTheme newTheme, [BuildContext? context]) {
    _theme = newTheme;
    context?.rebuildAllChildren();
  }

  setThemeMode(ThemeMode newThemeMode, [BuildContext? context]) {
    _themeMode = newThemeMode;
    context?.rebuildAllChildren();
  }

  resetTheme([BuildContext? context]) {
    _theme = MeiucaTheme.fromJSON(_mainThemeJson);
    context?.rebuildAllChildren();
  }
}
