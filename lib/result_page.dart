import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: const Center(
        child: Text('Muniraja'),
      ),
    );
  }
}
