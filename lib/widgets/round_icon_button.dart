import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const RoundIconButton({
    super.key,
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: const CircleBorder(),
      fillColor: kCardColor3,
      onPressed: onPressed,
      child: Icon(iconData),
    );
  }
}
