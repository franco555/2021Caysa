import 'package:caysa2021/components/styles/inputDecoration.dart';
import 'package:flutter/material.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/components/imagen/imagenCardGeneric.dart';
import 'package:caysa2021/components/labels/labelCardGeneric.dart';

class CarPersonaList extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String fecha;
  final Color colorFondo;
  final Color colorText;
  final Color colorLinea;
  final String estado;
  final bool colorSuccess;
  final String proceso;
  final double precioTotal;
  final Function fn;

  const CarPersonaList({
    Key key,
    this.imagen,
    this.titulo,
    this.fecha,
    this.colorFondo,
    this.colorText,
    this.colorLinea,
    this.estado,
    this.colorSuccess=true,
    this.proceso,
    this.precioTotal,
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
                      Text( titulo,style: CFr().tsTextTituloCard(colorText,20.0),),
                      LabelCardGeneric(
                        label: 'Proceso: ',
                        texto: proceso ,
                        colorLabel: colorText,
                        colorTexto: colorText,
                      ),
                      LabelCardGeneric(
                        label: 'Estado: ',
                        texto: estado ,
                        colorLabel: colorText,
                        colorTexto: colorSuccess ? CFr().getColorTextPrecioTotalCard():CFr().getColorTextBtnSalir() ,
                      ),
                      LabelCardGeneric(
                        label: 'Fecha: ',
                        texto: fecha ,
                        colorLabel: colorText,
                        colorTexto: colorText,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('\$ $precioTotal',
                    style: TextStyle(
                        color: CFr().getColorTextPrecioTotalCard(),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    child: Text("Detalles", style: TextStyle(fontSize: 14,color:colorText,decoration:TextDecoration.underline,),),
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
