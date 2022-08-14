import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import '../widgets/ReContainer_widget.dart';
import 'package:bmi_calculator/widgets/ReContainerChild_widget.dart';
import 'package:bmi_calculator/widgets/roundediconbutton.dart';
import 'package:bmi_calculator/widgets/calcbutton_widget.dart';
import 'package:bmi_calculator/bmi_logic.dart';
import 'package:bmi_calculator/constants.dart';

enum Gender {
  gent,
  lady,
}

class RealPage extends StatefulWidget {
  const RealPage({Key? key}) : super(key: key);

  @override
  State<RealPage> createState() => _RealPageState();
}

class _RealPageState extends State<RealPage> {
  Gender? pickedGender;
  // Color gentColor = inactiveColor;
  // Color ladyColor = inactiveColor;
  // void updateColor(Gender gender) {
  //   if (gender == Gender.gent) {
  //     if (gentColor == inactiveColor) {
  //       gentColor = activeColor;
  //       ladyColor = inactiveColor;
  //     } else {
  //       gentColor = activeColor;
  //     }
  //   }
  //
  //   if (gender == Gender.lady) {
  //     if (ladyColor == inactiveColor) {
  //       ladyColor = activeColor;
  //       gentColor = inactiveColor;
  //     } else {
  //       ladyColor = activeColor;
  //     }
  //   }
  // }
  int height = 180;
  int weight = 40;
  int age = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jonny-BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReContainer(
                    ontap: () {
                      setState(() {
                        pickedGender = Gender.gent;
                      });
                    },
                    colorr: pickedGender == Gender.gent
                        ? kActiveColor
                        : kInactiveColor,
                    child: ReContainerChild(
                      icon: Icons.male,
                      text: 'GENTS',
                    ),
                  ),
                ),
                Expanded(
                  child: ReContainer(
                    ontap: () {
                      setState(() {
                        pickedGender = Gender.lady;
                      });
                    },
                    colorr: pickedGender == Gender.lady
                        ? kActiveColor
                        : kInactiveColor,
                    child: ReContainerChild(
                      icon: Icons.female,
                      text: 'LADIES',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReContainer(
              colorr: kActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      'HEIGHT',
                      style: kTextStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      thumbColor: Colors.pink,
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 16.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 28.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 100.0,
                        max: 250.0,
                        onChanged: (double newHeight) {
                          setState(() {
                            height = newHeight.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReContainer(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              iconn: Icons.remove,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            RoundedIconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              iconn: Icons.add,
                            ),
                          ],
                        ),
                      ],
                    ),
                    colorr: kActiveColor,
                  ),
                ),
                Expanded(
                  child: ReContainer(
                    colorr: kActiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              iconn: Icons.remove,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            RoundedIconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              iconn: Icons.add,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CalcButton(
            calcButtonText: 'CALCULATE',
            onTappp: () {
              BmiLogic calcLogic = BmiLogic(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage(
                      calculateBmi: calcLogic.calcBMI(),
                      cfulldetail: calcLogic.fullDetail(),
                      cmoredetail: calcLogic.moreDetail(),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
