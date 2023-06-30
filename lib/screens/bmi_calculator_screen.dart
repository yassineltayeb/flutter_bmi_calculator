import 'package:bmi_calculator/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../enums/gender_enum.dart';
import '../widgets/icon_content.dart';
import '../widgets/reusable_card.dart';

class BMICalculatorScreen extends StatefulWidget {
  const BMICalculatorScreen({super.key});

  @override
  State<BMICalculatorScreen> createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  int height = 183;
  int weight = 74;
  int age = 19;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.male
                        ? kCardColor
                        : kCardColor2,
                    child: IconContent(
                      icon: Icons.male,
                      text: "MALE",
                      labelColor: selectedGender == Gender.male
                          ? kLabelActiveColor
                          : kLabelInactiveColor,
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.female
                        ? kCardColor
                        : kCardColor2,
                    child: IconContent(
                      icon: Icons.female,
                      text: "FEMALE",
                      labelColor: selectedGender == Gender.female
                          ? kLabelActiveColor
                          : kLabelInactiveColor,
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
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
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Weight',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kLabelTextStyleBold,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              iconData: Icons.remove,
                              onPressed: () {},
                            ),
                            const SizedBox(width: 10),
                            RoundIconButton(
                              iconData: Icons.add,
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kLabelTextStyleBold,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              iconData: Icons.remove,
                              onPressed: () {},
                            ),
                            const SizedBox(width: 10),
                            RoundIconButton(
                              iconData: Icons.add,
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
