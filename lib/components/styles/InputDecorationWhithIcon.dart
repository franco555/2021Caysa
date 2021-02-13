import 'package:flutter/material.dart';
InputDecoration buildInputDecorationWithIcon(IconData icons,String label, String placeholder) {
  return InputDecoration(
    hintText: placeholder,
    labelText: label,
    prefixIcon: Icon(icons),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
          color: Colors.green,
          width: 1
      ),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1,
      ),
    ),
    enabledBorder:UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1,
      ),
    ),
  );
}