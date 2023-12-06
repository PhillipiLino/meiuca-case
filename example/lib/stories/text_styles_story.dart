import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TextStylesStory extends Story {
  static const storyName = 'TextStyles';
  TextStylesStory({String patentPath = ''})
      : super(
          name: '$patentPath/$storyName',
          builder: (context) {
            final styles = {
              'Heading small': MeiucaTextStyles.headingSmall(),
              'Subtitle small': MeiucaTextStyles.subtitleSmall(),
              'Paragraph': MeiucaTextStyles.paragraph(),
            };

            return SafeArea(
              child: ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: styles.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final style = styles.entries.toList()[index];
                  final knobText = context.knobs.text(
                    label: 'Text',
                    initial: '',
                  );

                  return Text(
                    knobText.isEmpty ? style.key : knobText,
                    style: style.value,
                  );
                },
              ),
            );
          },
        );
}
