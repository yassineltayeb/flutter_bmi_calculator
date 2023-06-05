import 'package:bmi_calculator/screens/bmi_calculator_screen.dart';
import 'package:flutter/material.dart';

const mainColor = Color(0xFF0a0d22);

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
          scaffoldBackgroundColor: mainColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: mainColor,
          ),
          colorScheme: const ColorScheme.dark().copyWith(
            background: mainColor,
          )),
      home: const BMICalculatorScreen(),
    );
  }
}
