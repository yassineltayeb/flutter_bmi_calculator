import 'package:flutter/material.dart';

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
        ),
        const SizedBox(height: 15),
        Text(
          text,
          textAlign: TextAlign.center,
          strutStyle: const StrutStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
