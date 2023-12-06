import 'package:flutter/material.dart';

import '../../meiuca_components.dart';

class MeiucaPrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const MeiucaPrimaryButton({
    required this.title,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(Size.zero),
        padding: const MaterialStatePropertyAll(EdgeInsets.zero),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: meiucaRadiusSizes.none.toCircularBorderRadius(),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return meiucaBrandColors.primary.two;
            }

            if (states.contains(MaterialState.hovered)) {
              return meiucaBrandColors.primary.two;
            }

            if (states.contains(MaterialState.disabled)) {
              return meiucaNeutralColors.four;
            }

            return meiucaBrandColors.primary.three;
          },
        ),
      ),
      child: Padding(
        padding: meiucaSpacingSquishSizes.xs,
        child: Text(
          title,
          style: MeiucaTextStyles.paragraph(
            fontSize: meiucaFontSizes.xs,
            lineHeight: meiucaLineHeights.tight,
            fontWeight: meiucaFontWeights.medium,
            color: meiucaNeutralColors.five,
          ),
        ),
      ),
    );
  }
}
