import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
 // const bmi_calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: InputPage(),



    );

  }
}


