import 'package:flutter/material.dart';

class ItemNav extends StatelessWidget {
  final String titulo;
  final String subTitulo;
  final Color color;
  final IconData icono;
  final Function press;
  
  const ItemNav({
    Key key,
    this.titulo="vacío",
    this.subTitulo="no registrado",
    this.color,
    this.icono,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Icon( icono,color: color,),
      title: Text(titulo,style: TextStyle(color: color,fontSize: 16.0),),
      subtitle: Text(subTitulo,style: TextStyle(color: color, fontSize: 12.0),),
      trailing: Icon(Icons.arrow_forward_ios_rounded,color: color, size: 12.0,),
      onTap: press,
    );
  }
}