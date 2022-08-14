import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/ReContainer_widget.dart';
import 'package:bmi_calculator/widgets/calcbutton_widget.dart';


class ResultPage extends StatelessWidget {
  String? calculateBmi;
  String? cmoredetail;
  String? cfulldetail;
  ResultPage(
      {required this.calculateBmi,
      required this.cfulldetail,
      required this.cmoredetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jonny-BMI Calculator',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReContainer(
              colorr: kActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    cmoredetail.toString().toUpperCase(),
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    calculateBmi.toString(),
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      cfulldetail.toString(),
                      style: TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CalcButton(
            calcButtonText: 'RE-CALCULATE',
            onTappp: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
