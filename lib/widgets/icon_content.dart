import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconContent({
    required this.icon,
    required this.text,
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
          color: kLabelInactiveColor,
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
