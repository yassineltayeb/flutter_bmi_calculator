import 'package:flutter/material.dart';

import '../widgets/icon_content.dart';
import '../widgets/reusable_card.dart';

const mainColor = Color(0xFF111428);

class BMICalculatorScreen extends StatefulWidget {
  const BMICalculatorScreen({super.key});

  @override
  State<BMICalculatorScreen> createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: const Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: mainColor,
                    child: IconContent(
                      icon: Icons.male,
                      text: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: mainColor,
                    child: IconContent(
                      icon: Icons.female,
                      text: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: mainColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: mainColor),
                ),
                Expanded(
                  child: ReusableCard(color: mainColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
