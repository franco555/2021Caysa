import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:caysa2021/components/imagen/imagenCirculo.dart';
import 'package:flutter/material.dart';

class AppBarClassicDetail extends StatelessWidget {

  final String tituloSc;
  final String subTituloSc;
  final String fecha;
  final String total;

  const AppBarClassicDetail({
    Key key,
    this.tituloSc,
    this.subTituloSc,
    this.total,
    this.fecha,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        Row(            
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImagenCirculo(imagen:"assets/logo/logo_white.png" ,color: Colors.black,size: 55.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Carlos alvear",style: TextStyle(color: fcolorTxt200, fontSize: 18, fontWeight: FontWeight.w500),),
                Text("la villa 1-11-14",style: TextStyle(color: fcolorTxt200, fontSize: 14, fontWeight: FontWeight.w400),),
                Text("Cel: 11 21265",style: TextStyle(color: fcolorTxt200, fontSize: 14, fontWeight: FontWeight.w400),),
              ],
            )
            
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
              decoration: BoxDecoration(
                color: fcolorTxt200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(total,style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
            ),
            Text(fecha,style: TextStyle(color: CFr().getColorTextNavBar(), fontSize: 12, fontWeight: FontWeight.w500),)
          ],
        )
      ],
    );
  }
}