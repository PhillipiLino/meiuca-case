import 'package:example/pages/colors_page.dart';
import 'package:example/pages/typography_page.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() => runApp(const WidgetbookApp());

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: [
        ...directories,
        WidgetbookLeafComponent(
          name: 'Colors',
          useCase: WidgetbookUseCase.child(
            name: 'Colors',
            child: const ColorsPage(),
          ),
        ),
        WidgetbookLeafComponent(
          name: 'TextStyles',
          useCase: WidgetbookUseCase.child(
            name: 'TextStyles',
            child: const TypographyPage(),
          ),
        ),
      ],
      addons: [
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: ThemeData.light(),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: ThemeData.dark(),
            ),
          ],
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone13,
            Devices.android.mediumPhone,
          ],
        ),
      ],
    );
  }
}
