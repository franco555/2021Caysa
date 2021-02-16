import 'package:flutter/material.dart';

class IconoWithNombreInVertical extends StatelessWidget {
  final IconData icono;
  final String nombre;
  final Color color;
  final double size;
  final Function fn;

  const IconoWithNombreInVertical({
    Key key,
    this.icono,
    this.nombre,
    this.color,
    this.size,
    this.fn
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icono,color:color,size: size,),
          Text(nombre,style: TextStyle(color: color, fontSize:size-23, fontWeight: FontWeight.w400),),
        ],
      ),
      onTap: fn,
    );
  }
}