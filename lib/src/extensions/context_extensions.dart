import 'package:flutter/material.dart';

import '../theme_manager/meiuca_theme_manager.dart';

extension ContextExtensions on BuildContext {
  bool allowDarkMode() {
    var brightness = MediaQuery.of(this).platformBrightness;
    final themeMode = MeiucaThemeManager.shared.themeMode;
    if (themeMode != ThemeMode.system) return themeMode == ThemeMode.dark;

    return themeMode == ThemeMode.dark || brightness == Brightness.dark;
  }

  void rebuildAllChildren() {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (this as Element).visitChildren(rebuild);
  }
}
