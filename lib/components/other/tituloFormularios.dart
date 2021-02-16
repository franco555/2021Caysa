import 'package:caysa2021/components/styles/inputDecoration.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';

class TituloFormulario extends StatelessWidget {
  final String titulo;
  final String subTitulo;
  final double ancho;
  const TituloFormulario({
    Key key,
    this.titulo,
    this.subTitulo,
    this.ancho,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15,top: 25, bottom: 15),
      child:Container(
        width: ancho,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: lineaHorizontalBottom(CFr().getColorTextNavBar(),CFr().getColorTextNavBar()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(titulo,style: TextStyle(fontSize: 24),),
            Text(subTitulo,style: TextStyle(fontSize: 14),),
          ],
        ),
      ),
    );
  }
}