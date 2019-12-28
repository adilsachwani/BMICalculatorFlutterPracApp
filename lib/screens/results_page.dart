import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/primary_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.resultInterpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_BAR_TITLE),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: TITLE_TEXT_STYLE,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: PrimaryCard(
                color: ACTIVE_CARD_COLOR,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: RESULT_TEXT_STYLE,
                    ),
                    Text(
                      bmiResult,
                      style: BMI_TEXT_STYLE,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        resultInterpretation,
                        textAlign: TextAlign.center,
                        style: BODY_TEXT_STYLE,
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'CALCULATE AGAIN',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
