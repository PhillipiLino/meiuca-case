import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'MeiucaShape',
  type: MeiucaShape,
)
Widget normalShape(BuildContext context) {
  return Center(
    child: MeiucaShape(
      child: Text(
        context.knobs.string(label: 'Text', initialValue: 'Text'),
        style: MeiucaTextStyles.paragraph(),
      ),
    ),
  );
}
