// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:example/components/meiuca_card_content.dart' as _i2;
import 'package:example/components/meiuca_primary_button.dart' as _i3;
import 'package:example/components/meiuca_shape.dart' as _i4;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'components',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'MeiucaCardContent',
        useCase: _i1.WidgetbookUseCase(
          name: 'MeiucaCardContent',
          builder: _i2.normalCard,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'MeiucaPrimaryButton',
        useCase: _i1.WidgetbookUseCase(
          name: 'MeiucaPrimaryButton',
          builder: _i3.enabledButton,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'MeiucaShape',
        useCase: _i1.WidgetbookUseCase(
          name: 'MeiucaShape',
          builder: _i4.normalShape,
        ),
      ),
    ],
  )
];
