import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/component//constant.dart';
import 'package:bmicalculator/component//reuse_widget.dart';
import 'package:bmicalculator/component//button_widget.dart';

class ResultPage extends StatelessWidget {
  final String bmiCal;
  final String resultText;
  final String knowResult;

  ResultPage(
      {@required this.bmiCal,
      @required this.resultText,
      @required this.knowResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTitleText),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseWidget(
              colour: kActiveColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kTextStyle,
                  ),
                  Text(bmiCal, style: kBmiText),
                  Text(
                    knowResult,
                    textAlign: TextAlign.center,
                    style: kBmiTextResult,
                  ),
                ],
              ),
            ),
          ),
          DownBottomWidget(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
