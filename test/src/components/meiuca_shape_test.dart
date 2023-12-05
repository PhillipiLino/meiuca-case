import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meiuca_components/meiuca_components.dart';

main() {
  testWidgets('Check component properties', (WidgetTester tester) async {
    // Given
    const component = MeiucaShape(child: SizedBox());
    const materialApp = MaterialApp(
      home: Scaffold(body: Center(child: component)),
    );

    // When
    await tester.pumpWidget(materialApp);

    // Then
    final componentFinder = find.byType(MeiucaShape);
    final componentChildFinder = find.descendant(
      of: componentFinder,
      matching: find.byType(Container),
    );

    Container widget = tester.widget(componentChildFinder.first);
    BoxDecoration? widgetDecoration = widget.decoration as BoxDecoration?;
    Border? border = widgetDecoration?.border as Border?;
    BorderRadius? borderRadius =
        widgetDecoration?.borderRadius as BorderRadius?;

    expect(find.byType(MeiucaShape), findsOneWidget);
    expect(componentChildFinder, findsOneWidget);
    expect(widget.padding, meiucaSpacingSquishSizes.lg);
    expect(widgetDecoration?.color, meiucaNeutralColors.five);

    expect(border?.left.width, meiucaBorderSizes.thin);
    expect(border?.left.color, meiucaNeutralColors.four);

    expect(border?.right.width, meiucaBorderSizes.thin);
    expect(border?.right.color, meiucaNeutralColors.four);

    expect(border?.top.width, meiucaBorderSizes.thin);
    expect(border?.top.color, meiucaNeutralColors.four);

    expect(border?.bottom.width, meiucaBorderSizes.thin);
    expect(border?.bottom.color, meiucaNeutralColors.four);

    expect(borderRadius?.bottomLeft, meiucaRadiusSizes.none);
    expect(borderRadius?.bottomRight, meiucaRadiusSizes.none);
    expect(borderRadius?.topLeft, meiucaRadiusSizes.none);
    expect(borderRadius?.topRight, meiucaRadiusSizes.none);
  });

  testWidgets('Check if component show child', (WidgetTester tester) async {
    // Given
    const child = Text('Test');
    const component = MeiucaShape(child: child);
    const materialApp = MaterialApp(
      home: Scaffold(body: Center(child: component)),
    );

    // When
    await tester.pumpWidget(materialApp);

    // Then
    final MeiucaShape widget = tester.widget(find.byType(MeiucaShape).first);
    final Text childWidget = tester.widget(find.byType(Text).first);

    expect(widget.child, child);
    expect(childWidget, child);
  });
}
