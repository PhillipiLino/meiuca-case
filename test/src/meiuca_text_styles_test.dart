import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meiuca_components/meiuca_components.dart';

main() {
  testWidgets('Check headingSmall style properties',
      (WidgetTester tester) async {
    // Given
    final component = Text('Test', style: MeiucaTextStyles.headingSmall());
    final materialApp = MaterialApp(
      home: Scaffold(body: Center(child: component)),
    );

    // When
    await tester.pumpWidget(materialApp);

    // Then
    final componentFinder = find.byType(Text);
    Text widget = tester.widget(componentFinder.first);
    TextStyle? textStyle = widget.style;

    expect(textStyle?.fontSize, meiucaFontSizes.lg);
    expect(textStyle?.fontWeight, meiucaFontWeights.bold);
    expect(textStyle?.height, meiucaLineHeights.distant);
    expect(textStyle?.color, meiucaNeutralColors.one);
    expect(
      textStyle?.fontFamily,
      'packages/${meiucaTheme.package}/${meiucaFontFamilies.highlight}',
    );
  });

  testWidgets('Check headingSmall style with custom properties',
      (WidgetTester tester) async {
    // Given
    final customFontSize = meiucaFontSizes.sm;
    final customFontWeight = meiucaFontWeights.regular;
    final customHeight = meiucaLineHeights.tight;
    final customColor = meiucaNeutralColors.five;

    final component = Text(
      'Test',
      style: MeiucaTextStyles.headingSmall(
        fontSize: customFontSize,
        fontWeight: customFontWeight,
        lineHeight: customHeight,
        color: customColor,
      ),
    );
    final materialApp = MaterialApp(
      home: Scaffold(body: Center(child: component)),
    );

    // When
    await tester.pumpWidget(materialApp);

    // Then
    final componentFinder = find.byType(Text);
    Text widget = tester.widget(componentFinder.first);
    TextStyle? textStyle = widget.style;

    expect(textStyle?.fontSize, customFontSize);
    expect(textStyle?.fontWeight, customFontWeight);
    expect(textStyle?.height, customHeight);
    expect(textStyle?.color, customColor);
    expect(
      textStyle?.fontFamily,
      'packages/${meiucaTheme.package}/${meiucaFontFamilies.highlight}',
    );
  });

  testWidgets('Check subtitleSmall style properties',
      (WidgetTester tester) async {
    // Given
    final component = Text('Test', style: MeiucaTextStyles.subtitleSmall());
    final materialApp = MaterialApp(
      home: Scaffold(body: Center(child: component)),
    );

    // When
    await tester.pumpWidget(materialApp);

    // Then
    final componentFinder = find.byType(Text);
    Text widget = tester.widget(componentFinder.first);
    TextStyle? textStyle = widget.style;

    expect(textStyle?.fontSize, meiucaFontSizes.md);
    expect(textStyle?.fontWeight, meiucaFontWeights.medium);
    expect(textStyle?.height, meiucaLineHeights.medium);
    expect(textStyle?.color, meiucaNeutralColors.two);
    expect(
      textStyle?.fontFamily,
      'packages/${meiucaTheme.package}/${meiucaFontFamilies.highlight}',
    );
  });

  testWidgets('Check subtitleSmall style with custom properties',
      (WidgetTester tester) async {
    // Given
    final customFontSize = meiucaFontSizes.sm;
    final customFontWeight = meiucaFontWeights.regular;
    final customHeight = meiucaLineHeights.tight;
    final customColor = meiucaNeutralColors.five;

    final component = Text(
      'Test',
      style: MeiucaTextStyles.subtitleSmall(
        fontSize: customFontSize,
        fontWeight: customFontWeight,
        lineHeight: customHeight,
        color: customColor,
      ),
    );
    final materialApp = MaterialApp(
      home: Scaffold(body: Center(child: component)),
    );

    // When
    await tester.pumpWidget(materialApp);

    // Then
    final componentFinder = find.byType(Text);
    Text widget = tester.widget(componentFinder.first);
    TextStyle? textStyle = widget.style;

    expect(textStyle?.fontSize, customFontSize);
    expect(textStyle?.fontWeight, customFontWeight);
    expect(textStyle?.height, customHeight);
    expect(textStyle?.color, customColor);
    expect(
      textStyle?.fontFamily,
      'packages/${meiucaTheme.package}/${meiucaFontFamilies.highlight}',
    );
  });

  testWidgets('Check paragraph style properties', (WidgetTester tester) async {
    // Given
    final component = Text('Test', style: MeiucaTextStyles.paragraph());
    final materialApp = MaterialApp(
      home: Scaffold(body: Center(child: component)),
    );

    // When
    await tester.pumpWidget(materialApp);

    // Then
    final componentFinder = find.byType(Text);
    Text widget = tester.widget(componentFinder.first);
    TextStyle? textStyle = widget.style;

    expect(textStyle?.fontSize, meiucaFontSizes.xs);
    expect(textStyle?.fontWeight, meiucaFontWeights.regular);
    expect(textStyle?.height, meiucaLineHeights.distant);
    expect(textStyle?.color, meiucaNeutralColors.two);
    expect(
      textStyle?.fontFamily,
      'packages/${meiucaTheme.package}/${meiucaFontFamilies.highlight}',
    );
  });

  testWidgets('Check paragraph style with custom properties',
      (WidgetTester tester) async {
    // Given
    final customFontSize = meiucaFontSizes.sm;
    final customFontWeight = meiucaFontWeights.regular;
    final customHeight = meiucaLineHeights.tight;
    final customColor = meiucaNeutralColors.five;

    final component = Text(
      'Test',
      style: MeiucaTextStyles.paragraph(
        fontSize: customFontSize,
        fontWeight: customFontWeight,
        lineHeight: customHeight,
        color: customColor,
      ),
    );
    final materialApp = MaterialApp(
      home: Scaffold(body: Center(child: component)),
    );

    // When
    await tester.pumpWidget(materialApp);

    // Then
    final componentFinder = find.byType(Text);
    Text widget = tester.widget(componentFinder.first);
    TextStyle? textStyle = widget.style;

    expect(textStyle?.fontSize, customFontSize);
    expect(textStyle?.fontWeight, customFontWeight);
    expect(textStyle?.height, customHeight);
    expect(textStyle?.color, customColor);
    expect(
      textStyle?.fontFamily,
      'packages/${meiucaTheme.package}/${meiucaFontFamilies.highlight}',
    );
  });
}
