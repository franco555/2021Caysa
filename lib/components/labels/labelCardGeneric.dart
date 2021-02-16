import 'package:flutter/material.dart';

class LabelCardGeneric extends StatelessWidget {
  final String label;
  final String texto;
  final Color colorLabel;
  final Color colorTexto;

  const LabelCardGeneric({
    Key key,
    this.label,
    this.texto,
    this.colorLabel,
    this.colorTexto
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      child: Row(
        children: [
          Text(label, style: TextStyle(color:colorLabel)),
          SizedBox(width: 5,),
          Text(texto,  style: TextStyle( fontWeight: FontWeight.w500,color:colorTexto),),
        ],
      ),
    );
  }
}