import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {

  final String tituloSc;
  final String subTituloSc;
  final String fecha;

  const DetailAppBar({
    Key key,
    this.tituloSc,
    this.subTituloSc,
    this.fecha,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(            
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
          decoration: BoxDecoration(
            color: fcolorTxt200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(tituloSc,style: TextStyle(color:Colors.black, fontSize: 14, fontWeight: FontWeight.w500),),
        ),                
        Text(subTituloSc,style: TextStyle(color: fcolorTxt200, fontSize: 22, fontWeight: FontWeight.w500),),
        Text(fecha,style: TextStyle(color: fcolorTxt100, fontSize: 10, fontWeight: FontWeight.w500),)
      ],
    );
  }
}