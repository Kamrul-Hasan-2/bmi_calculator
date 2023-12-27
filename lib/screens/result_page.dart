import 'package:bmi_calculator/componants/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../componants/Reuse_card.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Center(
                child: Text(
                  "Your Result",
                  style: kTittleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReUseCard(
              colour: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text( resultText.toUpperCase(), style: kResultTextStyle,),
                  Text( bmiResult, style: kBMInUMBERtXTsTYLE,),
                  Text(interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,)
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(text: 'PRE-CALCULATE' ,onTap:(){
            Navigator.pop(context);
          }, ),
        ],
      ),
    );
  }
}
