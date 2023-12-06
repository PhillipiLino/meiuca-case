import 'package:flutter/material.dart';

import '../../meiuca_components.dart';

class MeiucaShape extends StatelessWidget {
  final Widget child;

  const MeiucaShape({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: meiucaSpacingSquishSizes.lg,
      decoration: BoxDecoration(
        color: meiucaNeutralColors.five,
        border: Border.all(
          color: meiucaNeutralColors.four,
          width: meiucaBorderSizes.thin,
        ),
        borderRadius: BorderRadius.all(meiucaRadiusSizes.none),
      ),
      child: child,
    );
  }
}
