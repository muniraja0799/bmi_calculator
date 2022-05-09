import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCULATOR',
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.light(
          primary: KPrimaryColor,
        ),
        scaffoldBackgroundColor: KPrimaryColor,
      ),
      home: const InputPage(),
    );
  }
}
