import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'MeiucaCardContent',
  type: MeiucaCardContent,
)
Widget normalCard(BuildContext context) {
  return Center(
    child: Padding(
      padding: meiucaSpacingSquishSizes.lg,
      child: SingleChildScrollView(
        child: Column(
          children: [
            MeiucaCardContent(
              title:
                  context.knobs.string(label: 'Title', initialValue: 'Title'),
              subtitle: context.knobs.string(
                label: 'Subtitle',
                initialValue: 'Subtitle',
              ),
              paragraph: context.knobs.string(
                label: 'Paragraph',
                initialValue: 'Paragraph',
              ),
              onPressButton: context.knobs.boolean(
                label: 'Enabled button',
                initialValue: true,
              )
                  ? () {}
                  : null,
            ),
          ],
        ),
      ),
    ),
  );
}
