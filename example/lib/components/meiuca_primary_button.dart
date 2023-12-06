import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'MeiucaPrimaryButton',
  type: MeiucaPrimaryButton,
)
Widget enabledButton(BuildContext context) {
  return Center(
    child: MeiucaPrimaryButton(
      title: context.knobs.string(
        label: 'Button title',
        initialValue: 'Title',
      ),
      onPressed: context.knobs.boolean(
        label: 'Enabled button',
        initialValue: true,
      )
          ? () {}
          : null,
    ),
  );
}
