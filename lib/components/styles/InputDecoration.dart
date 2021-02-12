import 'package:flutter/material.dart';
InputDecoration buildInputDecoration(IconData icons,String hinttext) {
  return InputDecoration(
    hintText: hinttext,
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