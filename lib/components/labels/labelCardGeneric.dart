import 'package:flutter/material.dart';

class LabelCardGeneric extends StatelessWidget {
  final String label;
  final String texto;
  final Color color;

  const LabelCardGeneric({
    Key key,
    this.label,
    this.texto,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      child: Row(
        children: [
          Text(label, style: TextStyle(color:color)),
          SizedBox(width: 5,),
          Text(texto,  style: TextStyle( fontWeight: FontWeight.w500,color:color),),
        ],
      ),
    );
  }
}