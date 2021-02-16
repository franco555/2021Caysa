import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/components/buttoms/iconoWithNombreInVertical.dart';
import 'package:flutter/material.dart';

class AppBarButtomDownDetail extends StatelessWidget {

  final String tituloSc;
  final String subTituloSc;
  final String fecha;
  final String total;

  const AppBarButtomDownDetail({
    Key key,
    this.tituloSc,
    this.subTituloSc,
    this.total,
    this.fecha,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceAround,
      children: [
        IconoWithNombreInVertical(
          nombre:"Nuevo" ,
          icono:Icons.add ,
          color:CFr().getColorBtnRegister() ,
          size:36,
          fn: (){},
        ),
        IconoWithNombreInVertical(
          nombre:"Reporte" ,
          icono:Icons.equalizer_outlined ,
          color:CFr().getColorBtnRegister() ,
          size:36,
          fn: (){},
        ),
        IconoWithNombreInVertical(
          nombre:"Historial" ,
          icono:Icons.history_outlined ,
          color:CFr().getColorBtnRegister() ,
          size:36,
          fn: (){},
        )
      ],
    );
  }
}