import 'package:flutter/material.dart';
import '../constants.dart';
import '../pages/results_page.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.text, this.onPressed});
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kButtonCalc,
          ),
        ),
        width: double.infinity,
        height: buttonHeight,
        color: kButtonColor,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
