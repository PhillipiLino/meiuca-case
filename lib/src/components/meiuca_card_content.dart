import 'package:flutter/material.dart';

import '../../meiuca_components.dart';

class MeiucaCardContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String paragraph;
  final VoidCallback? onPressButton;

  const MeiucaCardContent({
    required this.title,
    required this.subtitle,
    required this.paragraph,
    required this.onPressButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MeiucaShape(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: MeiucaTextStyles.headingSmall(),
          ),
          SizedBox(height: meiucaSpacingSizes.xxxs),
          Text(
            subtitle,
            style: MeiucaTextStyles.subtitleSmall(),
          ),
          SizedBox(height: meiucaSpacingSizes.xxs),
          Text(
            paragraph,
            style: MeiucaTextStyles.paragraph(),
          ),
          SizedBox(height: meiucaSpacingSizes.sm),
          MeiucaPrimaryButton(
            onPressed: onPressButton,
            title: 'Ler notícia',
          ),
        ],
      ),
    );
  }
}
