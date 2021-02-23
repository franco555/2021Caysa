

import 'package:caysa2021/components/styles/inputDecoration.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';

class TituloOfModal extends StatelessWidget {
  final String titulo;
  final String subTitulo;
  final double ancho;
  final IconData icono;
  final bool isPagePrincipal;
  final Function fn;
  const TituloOfModal({
    Key key,
    this.titulo,
    this.subTitulo,
    this.ancho,
    this.icono,
    this.fn,
    this.isPagePrincipal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child:Container(
        width: ancho,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: isPagePrincipal ? 20 : 0),
        decoration: tituloDeModal(CFr().getColorBarraDeTitulo()),
        child: Row(
          mainAxisAlignment: isPagePrincipal ? MainAxisAlignment.spaceBetween: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isPagePrincipal?_titulo():_icono(),
            isPagePrincipal?_icono():_titulo(),
          ],
        ),
      ),
    );
  }

  Column _titulo(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(titulo,style: TextStyle(fontSize: 24,color: CFr().getColorTextNavBar()),),
        Text(subTitulo,style: TextStyle(fontSize: 14,color: CFr().getColorTextNavBar()),),
      ],
    );
  }

  IconButton _icono(){
    return IconButton(icon: Icon(icono, color: CFr().getColorTextNavBar(),size: 26,), onPressed:fn, );
  }
}