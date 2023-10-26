import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/widgets/shape_left.dart';
import 'package:flutter_bmi_calculator/widgets/shape_right.dart';

import '../constants/constants.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final weithController = TextEditingController();
  final heightController = TextEditingController();
  double resultBmi = 0;
  String resultText = '';
  double widthGood = 100;
  double widthBad = 100;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80.0,
                child: TextField(
                  controller: weithController,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: rightShapeColor,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'وزن',
                    hintStyle:
                        TextStyle(color: rightShapeColor.withOpacity(0.5)),
                  ),
                  cursorColor: rightShapeColor,
                ),
              ),
              Container(
                width: 80.0,
                child: TextField(
                  controller: heightController,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: rightShapeColor,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'قد',
                    hintStyle:
                        TextStyle(color: rightShapeColor.withOpacity(0.5)),
                  ),
                  cursorColor: rightShapeColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              final weight = double.parse(weithController.text);
              final height = double.parse(heightController.text);

              setState(() {
                resultBmi = weight / (height * height);

                if (resultBmi > 25) {
                  resultText = 'شما اضافه وزن دارید';
                  widthBad = 270;
                  widthGood = 50;
                } else if (resultBmi >= 18.5 && resultBmi <= 25) {
                  resultText = 'وزن شما نرمال است';
                  widthBad = 50;
                  widthGood = 270;
                } else {
                  resultText = 'شما کمبود وزن دارید';
                  widthBad = 50;
                  widthGood = 50;
                }
              });
            },
            child: Container(
              width: 250,
              child: Center(
                  child: Text(
                '! محاسبه کن',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '${resultBmi.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 52.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            resultText,
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: rightShapeColor),
          ),
          SizedBox(
            height: 40.0,
          ),
          RightShape(
            width: widthBad,
          ),
          SizedBox(
            height: 40.0,
          ),
          LeftShape(
            width: widthGood,
          )
        ],
      ),
    );
  }
}
