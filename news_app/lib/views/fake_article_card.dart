import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';

class FakeArticleCard extends StatelessWidget {
  const FakeArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MeiucaCardContent(
      title: 'UNKNOWN',
      subtitle: 'UNKNOWN',
      paragraph:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer when an unknown printer took a galley of type and scrambled.',
      onPressButton: null,
    );
  }
}
