import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import '../widgets/color_card.dart';

class ColorsStory extends Story {
  static const storyName = 'Colors';
  ColorsStory({String patentPath = ''})
      : super(
          name: '$patentPath/$storyName',
          builder: (context) {
            return SingleChildScrollView(
              padding: meiucaSpacingSquishSizes.sm,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Brand Colors',
                    textAlign: TextAlign.center,
                    style: MeiucaTextStyles.headingSmall(),
                  ),
                  SizedBox(height: meiucaSpacingSizes.xxs),
                  Column(
                    children: [
                      Text(
                        'Primary',
                        textAlign: TextAlign.center,
                        style: MeiucaTextStyles.subtitleSmall(),
                      ),
                      SizedBox(height: meiucaSpacingSizes.xxxs),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius:
                              meiucaRadiusSizes.md.toCircularBorderRadius(),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ColorCard(
                              darkText: false,
                              name: 'one',
                              color: meiucaBrandColors.primary.one,
                            ),
                            ColorCard(
                              darkText: false,
                              name: 'two',
                              color: meiucaBrandColors.primary.two,
                            ),
                            ColorCard(
                              darkText: false,
                              name: 'three',
                              color: meiucaBrandColors.primary.three,
                            ),
                            ColorCard(
                              darkText: true,
                              name: 'four',
                              color: meiucaBrandColors.primary.four,
                            ),
                            ColorCard(
                              darkText: true,
                              name: 'five',
                              color: meiucaBrandColors.primary.five,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: meiucaSpacingSizes.xs),
                  Text(
                    'Neutral Colors',
                    textAlign: TextAlign.center,
                    style: MeiucaTextStyles.headingSmall(),
                  ),
                  SizedBox(height: meiucaSpacingSizes.xxs),
                  Column(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius:
                              meiucaRadiusSizes.md.toCircularBorderRadius(),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ColorCard(
                              darkText: false,
                              name: 'one',
                              color: meiucaNeutralColors.one,
                            ),
                            ColorCard(
                              darkText: false,
                              name: 'two',
                              color: meiucaNeutralColors.two,
                            ),
                            ColorCard(
                              darkText: false,
                              name: 'three',
                              color: meiucaNeutralColors.three,
                            ),
                            ColorCard(
                              darkText: true,
                              name: 'four',
                              color: meiucaNeutralColors.four,
                            ),
                            ColorCard(
                              darkText: true,
                              name: 'five',
                              color: meiucaNeutralColors.five,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
}
