import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color labelColor;
  const IconContent({
    required this.icon,
    required this.text,
    required this.labelColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: labelColor,
        ),
        const SizedBox(height: 15),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
