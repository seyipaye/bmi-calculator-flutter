import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(left: 35.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              margin: EdgeInsets.all(35.0),
              color: kActiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'NORMAL',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent),
                  ),
                  Text(
                    '22.1',
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Normal BMI range:',
                        style: kLabelStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '18.5 - 25 kg/m2',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'You have a normal body \n weight. Good job!',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  FlatButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 25.0, horizontal: 70.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Color(0xFF181A2F),
                    child: Text(
                      'SAVE RESULT',
                      style: TextStyle(fontSize: 17.0),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              height: kBottomBarHeight,
              color: kBottomBarColour,
              padding: EdgeInsets.only(top: 10.0, bottom: 25.0),
              child: Center(
                child: Text(
                  'RE-CALCULATE YOUR BMI',
                  style: kBigButtonTextStyle,
                ),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ), // Height card
        ],
      ),
    );
  }
}
