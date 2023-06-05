import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/icon_content.dart';
import '../widgets/reusable_card.dart';

class BMICalculatorScreen extends StatefulWidget {
  const BMICalculatorScreen({super.key});

  @override
  State<BMICalculatorScreen> createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  int height = 183;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    child: IconContent(
                      icon: Icons.male,
                      text: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
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
            child: ReusableCard(
              color: kCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: kLabelTextStyle,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kLabelTextStyleBold,
                      ),
                      const Text('cm'),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                      thumbColor: kSecondaryColor,
                      overlayShape: const RoundSliderOverlayShape(
                        overlayRadius: 30,
                      ),
                      overlayColor: kSecondaryColor.withOpacity(0.16),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      min: 120,
                      max: 220,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: kCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: kCardColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
