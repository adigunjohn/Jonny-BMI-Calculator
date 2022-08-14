import 'package:flutter/material.dart';
import 'pages/Real_Page.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
      ),
      home: RealPage(),
    );
  }
}


