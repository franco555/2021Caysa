import 'package:flutter/material.dart';

class TituloWithLine extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final Color color;
  final double fsize;

   const TituloWithLine({
    Key key,
    this.icono,
    this.titulo,
    this.color,
    this.fsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      width: double.maxFinite,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.transparent,blurRadius: 8,spreadRadius: 3,offset: Offset(0, 10),),
        ],
        border: Border(bottom: BorderSide(color: color,width: 1))
      ),
      child: Row(
        children: [
          Text(titulo, style: TextStyle(color: color,fontSize: fsize),)
        ],
      )
    );
  }
}