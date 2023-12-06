import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class MeiucaCardContentStory extends Story {
  static const storyName = 'MeiucaCardContent';
  MeiucaCardContentStory({String parentPath = ''})
      : super(
          name: '$parentPath/$storyName',
          builder: (context) {
            return Center(
              child: Padding(
                padding: meiucaSpacingSquishSizes.lg,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MeiucaCardContent(
                        title: context.knobs.text(
                          label: 'Title',
                          initial: 'Title',
                        ),
                        subtitle: context.knobs.text(
                          label: 'Subtitle',
                          initial: 'Subtitle',
                        ),
                        paragraph: context.knobs.text(
                          label: 'Paragraph',
                          initial: 'Paragraph',
                        ),
                        onPressButton: context.knobs.boolean(
                          label: 'Enabled button',
                          initial: true,
                        )
                            ? () {}
                            : null,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
}
