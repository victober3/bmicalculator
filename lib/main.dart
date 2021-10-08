import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//declear all constant values

const bottomContainerHeight = 80.0;
const activeContainerColor = Color(0xFF1D1E33);
const inactiveContainerColor = Color(0xFF090C22);
const bottomContainerColor = Color(0xFFEB1555);

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  // const bmi_calculator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
          //primaryColorDark:Color(0xFF0A0D22)
          // primaryColor: Color(0xFF0A0D22),
          ),
      home: InputPage(),
    );
  }
}

// enum Gender {
//   male,
//   female,
//}
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

Color maleCardColor = inactiveContainerColor;
Color femaleCardColor = inactiveContainerColor;
//male = 1; female = 2;
// void updateColor(int gender){
//   if(gender == 1 ){
//     if(maleCardColor == inactiveContainerColor){
//       maleCardColor = activeContainerColor;
//       femaleCardColor = inactiveContainerColor;
//     }
//     else{
//       maleCardColor = inactiveContainerColor;
//     }
//   }
//   if(gender == 1){
//     if(femaleCardColor == inactiveContainerColor){
//       femaleCardColor = activeContainerColor;
//       maleCardColor = inactiveContainerColor;
//     }
//     else{
//       femaleCardColor = inactiveContainerColor;
//     }
//   }
// }

class _InputPageState extends State<InputPage> {
  // Gender selectedGender;
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
                    colour: maleCardColor,
                    cardChild: Column(
                      children: <Widget>[Icon(FontAwesomeIcons.mars)],
                    ),
                  ),
                ),
                Expanded(
                  child: Reuseable(
                    colour: femaleCardColor,
                    cardChild: Column(
                      children: <Widget>[Icon(FontAwesomeIcons.mars)],
                    ),
                  ),
                ),
               ],

            ),

          ),
          Expanded(
            child: Reuseable(
              colour: maleCardColor,
              cardChild: Column(
                //children: <Widget>[Icon(FontAwesomeIcons.mars)],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuseable(
                    colour: maleCardColor,
                    cardChild: Column(
                      //children: <Widget>[Icon(FontAwesomeIcons.mars)],
                    ),
                  ),
                ),
                Expanded(
                  child: Reuseable(
                    colour: maleCardColor,
                    cardChild: Column(
                     // children: <Widget>[Icon(FontAwesomeIcons.mars)],
                    ),
                  ),
                ),
              ],
            ),
          ), Expanded(
            child: Reuseable(
              colour: bottomContainerColor,
              cardChild: Column(
                // children: <Widget>[Icon(FontAwesomeIcons.mars)],
              ),
            ),
          ),

        ],


      ),
    );
  }

  // IconContent({FaIcon icon, String label}) {}
}

class Reuseable extends StatelessWidget {
  Reuseable({required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: activeContainerColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
//   Expanded(
//     child: GestureDetector(
//        onTap: (){
//          setState(() {
//            //updateColor(2);
//          });
//        },
//       child: Reuseable(
//
//        colour: femaleCardColor,
//       //  cardChild: IconContent(
//       //  icon:  FontAwesomeIcons.mars,
//       //  label: 'FEMALE',
//       // ),
//     ),
//     ),
//     ),
//     ]
//   ),
//   ),
//  Expanded(
//      child: Reuseable(
//        colour: inactiveContainerColor,
//
//   ),
// ),
//
//    Expanded(
//      child: Row(
//       children: <Widget>[
//       Expanded(
//          child: Reuseable(
//           colour: inactiveContainerColor,
//             // cardChild:
//           ),
//         ),
//            Expanded(
//                 child: Reuseable(
//                  colour: inactiveContainerColor,
//
//
//                 ),
//            ),
//       ],
//    ),
//  ),
//
//    Container (
//      color: bottomContainerColor,
//       margin: EdgeInsets.only(top: 10.0),
//        width: double.infinity,
//         height: bottomContainerHeight,
