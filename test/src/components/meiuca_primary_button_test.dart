import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meiuca_components/meiuca_components.dart';

main() {
  testWidgets('Check component properties', (WidgetTester tester) async {
    // Given
    const text = 'Test';
    final component = MeiucaPrimaryButton(title: text, onPressed: () {});
    final materialApp = MaterialApp(
      home: Scaffold(body: Center(child: component)),
    );

    // When
    await tester.pumpWidget(materialApp);

    // Then
    final componentFinder = find.byType(MeiucaPrimaryButton);

    final componentChildFinder = find.descendant(
      of: componentFinder,
      matching: find.byType(FilledButton),
    );

    final componentPaddingFinder = find.descendant(
      of: componentChildFinder,
      matching: find.byType(Padding),
    );

    final componentTextFinder = find.descendant(
      of: componentFinder,
      matching: find.byType(Text),
    );

    FilledButton widget = tester.widget(componentChildFinder.first);
    Padding paddingWidget = tester.widget(componentPaddingFinder.last);
    Text textWidget = tester.widget(componentTextFinder.first);
    ButtonStyle? buttonStyle = widget.style;

    expect(find.byType(MeiucaPrimaryButton), findsOneWidget);
    expect(componentChildFinder, findsOneWidget);
    expect(buttonStyle?.padding?.resolve({}), EdgeInsets.zero);
    expect(buttonStyle?.minimumSize?.resolve({}), Size.zero);
    expect(
      buttonStyle?.shape?.resolve({}),
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(meiucaRadiusSizes.none.x),
      ),
    );
    expect(
      buttonStyle?.backgroundColor?.resolve({}),
      meiucaBrandColors.primary.three,
    );

    expect(paddingWidget.padding, meiucaSpacingSquishSizes.xs);

    expect(find.text(text), findsOneWidget);
    expect(textWidget.style?.color, meiucaNeutralColors.five);
    expect(textWidget.style?.height, meiucaLineHeights.tight);
    expect(textWidget.style?.fontWeight, meiucaFontWeights.medium);
    expect(textWidget.style?.fontSize, meiucaFontSizes.xs);
    expect(
      textWidget.style?.fontFamily,
      'packages/${meiucaTheme.package}/${meiucaFontFamilies.highlight}',
    );
  });

  testWidgets('Check button onPress', (WidgetTester tester) async {
    // Given
    bool pressed = false;
    final component = MeiucaPrimaryButton(
      title: 'Test',
      onPressed: () => pressed = true,
    );

    final materialApp = MaterialApp(
      home: Scaffold(body: Center(child: component)),
    );

    // When
    await tester.pumpWidget(materialApp);

    // Then
    final componentFinder = find.byType(MeiucaPrimaryButton);
    expect(pressed, isFalse);

    await tester.tap(componentFinder);
    expect(pressed, isTrue);
  });
}
