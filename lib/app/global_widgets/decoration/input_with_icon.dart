import 'package:flutter/material.dart';
InputDecoration decorationInputWithIcon(IconData icons, String label, String placeholder, double border) {
  double borderLine=4;
  return InputDecoration(
    hintText: placeholder,
    labelText: label,
    prefixIcon: Icon(icons),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.green,width: borderLine),
      borderRadius: BorderRadius.circular(border),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide( color: Colors.blue, width: borderLine,),
    ),
    enabledBorder:UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: borderLine,),
      borderRadius: BorderRadius.circular(border),
    ),
  );
}