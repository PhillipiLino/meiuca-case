import 'package:flutter/material.dart';
import 'package:meiuca_components/meiuca_components.dart';

class ColorCard extends StatelessWidget {
  final String name;
  final Color color;
  final bool darkText;

  const ColorCard({
    super.key,
    required this.name,
    required this.color,
    required this.darkText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(16),
      color: color,
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: meiucaFontWeights.bold,
          color: darkText ? meiucaNeutralColors.one : meiucaNeutralColors.five,
        ),
      ),
    );
  }
}
