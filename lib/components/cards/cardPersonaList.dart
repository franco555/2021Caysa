import 'package:flutter/material.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/components/imagen/imagenCardGeneric.dart';
import 'package:caysa2021/components/labels/labelCardGeneric.dart';
import 'package:caysa2021/components/buttoms/btnAction.dart';

class CarPersonaList extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String estado;
  final bool colorSuccess;
  final String proceso;
  final double precioTotal;
  final Function fn;

  const CarPersonaList({
    Key key,
    this.imagen,
    this.titulo,
    this.estado,
    this.colorSuccess=true,
    this.proceso,
    this.precioTotal,
    this.fn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
      ),
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
                      Text( titulo,style: CFr().tsTextTituloCard(CFr().getColorTextTituloCard(),20.0),),
                      LabelCardGeneric(
                        label: 'Proceso: ',
                        texto: proceso ,
                        color: Colors.black,
                      ),
                      LabelCardGeneric(
                        label: 'Estado: ',
                        texto: estado ,
                        color: colorSuccess ? CFr().getColorTextPrecioTotalCard():CFr().getColorTextBtnSalir() ,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '\$ $precioTotal',
                    style: TextStyle(
                        color: CFr().getColorTextPrecioTotalCard(),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: 
                        BtnAction(
                          icono:Icons.more_horiz, 
                          size: 18,
                          color: CFr().getColorIconoEditar(),
                          fn:fn,),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

}
