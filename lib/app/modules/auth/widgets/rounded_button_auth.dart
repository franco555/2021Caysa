import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';

class RoundedButtonAuth extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final double sizeText;
  final FontWeight fw;
  const RoundedButtonAuth({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.sizeText=12,
    this.fw=FontWeight.w100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        width: 200.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: color,
            onPressed: press,
            child: Text(text, style: TextStyle(color: textColor,fontSize: sizeText, fontWeight: fw),
            ),
          ),
        ),
      ),
    );
  }
}