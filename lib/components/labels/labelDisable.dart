import 'package:caysa2021/components/imagen/imagenCirculo.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';

class LabelDisable extends StatelessWidget {
  final String imagen;
  final String producto;
  final String proceso;

  const LabelDisable({
    Key key,
    this.imagen,
    this.producto,
    this.proceso,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: new BoxDecoration(
        color: Colors.black12,
        border: new Border.all(
          color: CFr().getColorBtnLogin(),
          width: 1.0,
          style: BorderStyle.solid
        ),
        borderRadius: new BorderRadius.all(new Radius.circular(45.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImagenCirculo(
            imagen:imagen,
            color: CFr().getColorBtnLogin(),
            size: 50,
          ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(proceso,style: TextStyle(fontSize: 12),),
              Text(producto,style: TextStyle(fontSize: 24))
            ],
          )
         
        ],
      ),
    );
  }
}