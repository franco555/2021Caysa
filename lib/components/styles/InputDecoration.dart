import 'package:flutter/material.dart';
InputDecoration buildInputDecorations(String hinttext) {
  return InputDecoration(
    hintText: hinttext,
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