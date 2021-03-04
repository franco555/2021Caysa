import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';

class DecorationContainerInput extends StatelessWidget {
  final Widget child;
  final double radio;
  const DecorationContainerInput({
    Key key,
    this.child,
    this.radio=30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(2),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(radio),
      ),
      child: child,
    );
  }
}