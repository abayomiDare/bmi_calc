import 'package:bmi_calc/card.dart';
import 'package:flutter/material.dart';
import 'components/bottom_container.dart';
import 'constant.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {required this.calcResult,
      required this.getDescription,
      required this.getResult});

  final String calcResult;
  final String getResult;
  final String getDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text("Your Result", style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(getResult, style: kResultTexStyle),
                  Text(
                    calcResult,
                    style: kBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      getDescription,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
            onTap: () {
              Navigator.pop(context);
            },
            textTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
