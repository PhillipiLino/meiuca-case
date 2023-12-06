import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class MeiucaPrimaryButtonStory extends Story {
  static const storyName = 'MeiucaPrimaryButton';
  MeiucaPrimaryButtonStory({String parentPath = ''})
      : super(
          name: '$parentPath/$storyName',
          builder: (context) {
            return Center(
              child: MeiucaPrimaryButton(
                title: context.knobs.text(
                  label: 'Button title',
                  initial: 'Title',
                ),
                onPressed: context.knobs.boolean(
                  label: 'Enabled button',
                  initial: true,
                )
                    ? () {}
                    : null,
              ),
            );
          },
        );
}
