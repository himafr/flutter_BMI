import 'package:flutter/material.dart';
import "./input_page.dart";
void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor:const Color(0xFF0a0e21),
        scaffoldBackgroundColor: const Color(0xff0a0e21),
      ),
      home:const InputPage(),
    );
  }
}