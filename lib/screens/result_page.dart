import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  ResultPage({
    Key? key,
  }) : super(key: key);

  List data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: const Text(
                'Your Result',
                style: KTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: KActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    data[1].toUpperCase(),
                    textAlign: TextAlign.center,
                    style: KResultTextStyle,
                  ),
                  Text(
                    data[0],
                    style: KBMITextStyle,
                  ),
                  Text(
                    data[2],
                    textAlign: TextAlign.center,
                    style: KBodyTextStyle,
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
            onTap: () {
              Get.back();
            },
            buttonTitle: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
