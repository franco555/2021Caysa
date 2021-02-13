import 'package:caysa2021/components/other/imgenCirculo.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';

class TituloFormularioWhithImagen extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String subTitulo;
  const TituloFormularioWhithImagen({
    Key key,
    this.imagen,
    this.titulo,
    this.subTitulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ImagenCirculo(
          imagen:imagen ,
          color:CFr().getColorTextNavBar(),
          size: 68.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(titulo,style: TextStyle(fontSize: 24),),
            Text(subTitulo,style: TextStyle(fontSize: 14),),
          ],
        )
      ],
    );
  }
}