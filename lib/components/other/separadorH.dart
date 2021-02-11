import 'package:flutter/material.dart';

class SeparadorHorizontal extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final Color color;
  final double fsize;

   const SeparadorHorizontal({
    Key key,
    this.icono,
    this.titulo,
    this.color,
    this.fsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
            margin: EdgeInsets.only(left:10.0,top:10.0,right:10.0,bottom:10.0),
            padding: EdgeInsets.all(10),
            width: size.width,
            decoration: BoxDecoration(
              //color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.05),
                  blurRadius: 8,
                  spreadRadius: 3,
                  offset: Offset(0, 10),
                ),
              ],
              //borderRadius: BorderRadius.circular(30)
              border: Border(
                bottom: BorderSide(
                  color: color,
                  width: 1
                )
              )
            ),
            child: Row(
              children: [
                Icon(icono,color:color,size: fsize,),
                SizedBox(width: 5,),
                Text(titulo, style: TextStyle(color: color,fontSize: fsize),)
              ],
            )
          );
  }
}