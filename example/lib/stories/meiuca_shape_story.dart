import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class MeiucaShapeStory extends Story {
  static const storyName = 'MeiucaShape';
  MeiucaShapeStory({String parentPath = ''})
      : super(
          name: '$parentPath/$storyName',
          builder: (context) {
            return Center(
              child: MeiucaShape(
                child: Text(
                  context.knobs.text(label: 'Text', initial: 'Text'),
                  style: MeiucaTextStyles.paragraph(),
                ),
              ),
            );
          },
        );
}
