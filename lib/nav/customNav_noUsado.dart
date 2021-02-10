import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/nav/customAppBar.dart';
import 'package:flutter/material.dart';

class CustomNav extends StatelessWidget with  PreferredSizeWidget {

  final String titulo;
  const CustomNav({
    Key key, 
    this.titulo,
  }) : super(key: key);

  Size get preferredSize => Size.fromHeight(CFr().getHeightNav());

  @override
  Widget build(BuildContext context) {
    return  PreferredSize(
        preferredSize:preferredSize,
        child:new CustomAppBar(tituloNav:titulo),
    );
  }
}