import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';
import 'package:widgetbook/widgetbook.dart';

class TypographyPage extends StatefulWidget {
  const TypographyPage({super.key});

  @override
  State<TypographyPage> createState() => _TypographyPageState();
}

class _TypographyPageState extends State<TypographyPage> {
  @override
  Widget build(BuildContext context) {
    final styles = {
      'Heading small': MeiucaTextStyles.headingSmall(),
      'Subtitle small': MeiucaTextStyles.subtitleSmall(),
      'Paragraph': MeiucaTextStyles.paragraph(),
    };

    return Builder(
      builder: (context) {
        return SafeArea(
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: styles.length,
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              final knobText = context.knobs.string(
                label: 'Text',
                initialValue: '',
              );

              return Text(
                knobText.isEmpty
                    ? styles.entries.toList()[index].key
                    : knobText,
                style: styles.entries.toList()[index].value,
              );
            },
          ),
        );
      },
    );
  }
}
