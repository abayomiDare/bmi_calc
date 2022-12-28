import 'package:flutter/material.dart';
import 'package:bmi_calc/constant.dart';

class BottomContainer extends StatelessWidget {
  BottomContainer({required this.onTap, required this.textTitle});
  final String textTitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(textTitle, style: kLargeButton),
        ),
      ),
    );
  }
}
