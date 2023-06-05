import 'package:bmi_calculator/screens/bmi_calculator_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kMainColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: kMainColor,
          ),
          colorScheme: const ColorScheme.dark().copyWith(
            background: kMainColor,
          )),
      home: const BMICalculatorScreen(),
    );
  }
}
