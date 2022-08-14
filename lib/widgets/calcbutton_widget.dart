import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class CalcButton extends StatelessWidget {

  final String calcButtonText;
  final void Function()? onTappp;
  CalcButton({required this.calcButtonText, required this.onTappp});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTappp,
      child: Container(
        height: kBottomContainerH,
        width: double.infinity,
        color: kBottomContainerC,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            calcButtonText,
            style: kCalcButton,
          ),
        ),
      ),
    );
  }
}
