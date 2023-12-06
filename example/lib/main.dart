import 'package:example/stories/colors_story.dart';
import 'package:example/stories/meiuca_card_content_story.dart';
import 'package:example/stories/text_styles_story.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'stories/meiuca_primary_button_story.dart';
import 'stories/meiuca_shape_story.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const componentsStoryName = 'Components';

  @override
  Widget build(BuildContext context) => Storybook(
        initialStory:
            '$componentsStoryName/${MeiucaPrimaryButtonStory.storyName}',
        stories: [
          MeiucaPrimaryButtonStory(parentPath: componentsStoryName),
          MeiucaShapeStory(parentPath: componentsStoryName),
          MeiucaCardContentStory(parentPath: componentsStoryName),
          ColorsStory(),
          TextStylesStory(),
        ],
      );
}
