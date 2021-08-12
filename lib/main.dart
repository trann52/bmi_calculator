import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

// usually the main class contains the theme and style
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // this is an app wide theme
      // use .copyWith when you want to edit an exiting theme
      theme: ThemeData.dark().copyWith(
        sliderTheme: kSliderStyle,
        primaryColor: Color(0xFF0a0e21),
        scaffoldBackgroundColor: Color(0xFF0a0e21),
      ),
      // direct to the first screen
      home: InputPage(),
//      initialRoute: '/input',
//      routes: {
//        '/input': (context) => InputPage(),
//        '/calculate': (context) => ResultsPage(
//              resultText: ,
//              interpretation: '',
//              bmiResult: '',
//            ),
//      },
    );
  }
}
