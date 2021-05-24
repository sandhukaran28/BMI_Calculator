import 'package:flutter/material.dart';

const buttonHeight = 80.0;
const cardColor = 0xFF1D1E33;
const buttonColor = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReuseableCard(
                  color: Color(cardColor),
                  cardChild: Column(
                    children: <Widget>[],
                  ),
                ),
                ReuseableCard(
                  color: Color(cardColor),
                )
              ],
            ),
          ),
          ReuseableCard(
            color: Color(cardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReuseableCard(
                  color: Color(cardColor),
                ),
                ReuseableCard(
                  color: Color(cardColor),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: buttonHeight,
            color: Color(buttonColor),
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.color, this.cardChild});
  final Color color;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
        child: cardChild,
      ),
    );
  }
}
