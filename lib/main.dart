import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/screens/first_page.dart';
import 'package:flutter_bmi_calculator/widgets/appbar_widget.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: getAppBar(),
        body: SafeArea(
          child: FirstPage(),
        ),
      ),
    );
  }
}
