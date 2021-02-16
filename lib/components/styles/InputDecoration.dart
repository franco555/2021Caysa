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

BoxDecoration lineaHorizontalBottom(Color colorLinea, Color fondo){
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

BoxDecoration lineaHorizontalTop(Color colorLinea, Color fondo){
  return BoxDecoration(
    color: fondo,
    border: Border(
          top: BorderSide(
            color: colorLinea,
            width: 1
          )
        )
  );
}

//Color de fondo del titutlo de modal
BoxDecoration tituloDeModal(Color colorFondo){
  return BoxDecoration(
    color: colorFondo,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    ),
  );
}

//Color de fondo del Proceso
BoxDecoration subSeccionDeModal(Color colorFondo){
  return BoxDecoration(
    color: colorFondo,
    border: Border(
      top: BorderSide(
        color: colorFondo,
        width: 1
      )
    )
  
  );
}

