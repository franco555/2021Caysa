import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';
class DetailGeneric extends StatelessWidget {

  final String titulo;
  const DetailGeneric({
    Key key,
    this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: fcolorTxt200,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(titulo,style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),),
        ), 
      ]
    );
  }
}