import 'package:flutter/material.dart';
BoxDecoration lineaHBottom(Color colorLinea, Color fondo){
  return BoxDecoration(
    color: fondo,
    border: Border(
          bottom: BorderSide(
            color: colorLinea,
            width: 1
          ),
        )
  );
}