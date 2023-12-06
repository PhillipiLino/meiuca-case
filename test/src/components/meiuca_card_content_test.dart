import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meiuca_components/meiuca_components.dart';

main() {
  testWidgets('Check component properties', (WidgetTester tester) async {
    // Given
    const title = 'title';
    const subtitle = 'subtitle';
    const paragraph = 'paragraph';
    const component = MeiucaCardContent(
      title: title,
      subtitle: subtitle,
      paragraph: paragraph,
      onPressButton: null,
    );

    const materialApp = MaterialApp(
      home: Scaffold(body: Center(child: component)),
    );

    // When
    await tester.pumpWidget(materialApp);

    // Then
    final titleFinder = find.text(title);
    final subtitleFinder = find.text(subtitle);
    final paragraphFinder = find.text(paragraph);
    final sizedBoxFinder = find.byType(SizedBox);

    final sizedBoxesSizes = [
      meiucaSpacingSizes.xxxs,
      meiucaSpacingSizes.xxs,
      meiucaSpacingSizes.sm,
    ];

    Text titleWidget = tester.widget(find.text(title).first);
    Text subtitleWidget = tester.widget(find.text(subtitle).first);
    Text paragraphWidget = tester.widget(find.text(paragraph).first);

    expect(find.byType(MeiucaShape), findsOneWidget);
    expect(find.byType(MeiucaPrimaryButton), findsOneWidget);
    expect(find.text('Ler notícia'), findsOneWidget);
    expect(sizedBoxFinder, findsNWidgets(3));

    expect(titleFinder, findsOneWidget);
    expect(subtitleFinder, findsOneWidget);
    expect(paragraphFinder, findsOneWidget);

    expect(titleWidget.style, MeiucaTextStyles.headingSmall());
    expect(subtitleWidget.style, MeiucaTextStyles.subtitleSmall());
    expect(paragraphWidget.style, MeiucaTextStyles.paragraph());

    for (var i = 0; i < sizedBoxFinder.evaluate().length; i++) {
      SizedBox elementWidget = tester.widget(sizedBoxFinder.at(i));
      expect(elementWidget.height, sizedBoxesSizes[i]);
    }
  });

  testWidgets('Check when press button', (WidgetTester tester) async {
    // Given
    bool pressed = false;
    const title = 'title';
    const subtitle = 'subtitle';
    const paragraph = 'paragraph';
    final component = MeiucaCardContent(
      title: title,
      subtitle: subtitle,
      paragraph: paragraph,
      onPressButton: () => pressed = true,
    );

    final materialApp = MaterialApp(
      home: Scaffold(body: Center(child: component)),
    );

    // When
    await tester.pumpWidget(materialApp);

    // Then
    expect(pressed, isFalse);

    await tester.tap(find.byType(MeiucaPrimaryButton));
    expect(pressed, isTrue);
  });
}
