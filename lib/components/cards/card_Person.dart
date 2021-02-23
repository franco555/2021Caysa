import 'package:caysa2021/components/styles/inputDecoration.dart';
import 'package:flutter/material.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/components/imagen/imagenCardGeneric.dart';

class CarPerson extends StatelessWidget {
  final String imagen;
  final String nombre;
  final String apellido;
  final String especialidad;
  final Color colorFondo;
  final Color colorText;
  final Color colorLinea;
  final Function fn;

  const CarPerson({
    Key key,
    this.imagen,
    this.nombre,
    this.apellido,
    this.especialidad,
    this.colorFondo,
    this.colorText,
    this.colorLinea,
    this.fn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:lineaHorizontalBottom(colorLinea,colorFondo),
      margin:EdgeInsets.fromLTRB(0, 0, 0, 1) ,
      padding:EdgeInsets.only(right: 20, top: 10.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  ImagenCardGeneric(imagen:imagen),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text( "$nombre $apellido",style: CFr().tsTextTituloCard(colorText,20.0),),
                      Text(especialidad,  style: TextStyle( fontWeight: FontWeight.w500,color:colorText),),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    child: Text("Agregar", style: TextStyle(fontSize: 14,color:colorText,),),
                    onTap: fn,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

}
