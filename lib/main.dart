import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}
class BMICalculator extends StatelessWidget {
  // const bmi_calculator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: InputPage(),
    );
  }
}
class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuseable(

                  ),
                ),
                Expanded(
                  child: Reuseable(

                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reuseable(

            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuseable(

                  ),
                ),
                Expanded(
                  child: Reuseable(

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class Reuseable extends StatelessWidget {

  Reuseable({this.color});
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
