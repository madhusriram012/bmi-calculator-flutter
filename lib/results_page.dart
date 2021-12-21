import 'package:bmi_calculator/bottom_button.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';


class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult,this.resultText,this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR'),
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
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: resultTextStyle,
                  ),
                  Text(
                   bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                   interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE',onTap: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
