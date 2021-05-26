import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusableCard.dart';
import '../components/bottomButton.dart';

class Result extends StatelessWidget {
  Result({@required this.bmi, @required this.result, @required this.comment});
  final String bmi;
  final String comment;
  final String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "YOUR RESULT",
                style: kResText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    result.toUpperCase(),
                    style: kResText1,
                  ),
                  Text(
                    bmi,
                    style: kResText2,
                  ),
                  Text(
                    comment,
                    style: kResText3,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: BottomButton(
                  text: "RE-CALCULATE",
                  onPressed: () {
                    Navigator.pop(context);
                  })),
        ],
      ),
    );
  }
}
