import 'package:flutter/material.dart';

class TituloAndBtn extends StatelessWidget {
  final IconData iconoOfTitulo;
  final IconData iconoOfBtn;
  final String titulo;
  final Color color;
  final double fsize;
  final Function fn;

   const TituloAndBtn({
    Key key,
    this.iconoOfTitulo,
    this.iconoOfBtn,
    this.titulo,
    this.color,
    this.fsize,
    this.fn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.transparent,
            blurRadius: 8,
            spreadRadius: 3,
            offset: Offset(0, 10),
          ),
        ],
        border: Border(
          bottom: BorderSide(
            color: color,
            width: 1
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(iconoOfTitulo,color:color,size: fsize,),
              SizedBox(width: 5,),
              Text(titulo, style: TextStyle(color: color,fontSize: fsize),),
            ],
          ),
          InkWell(
            child:  Icon(iconoOfBtn, color: color,size: fsize+10,),
            onTap: fn,
          )
        ],
      )
    );
  }
}