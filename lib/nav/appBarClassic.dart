import 'package:caysa2021/components/styles/inputDecoration.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/nav/appBarClassicDetail.dart';
import 'package:flutter/material.dart';

class AppBarClassic extends StatelessWidget with  PreferredSizeWidget{
  final String tituloNav;
  final String subTituloNav;
  final String total;
  final List<Widget> btnAppBar;

  const AppBarClassic({
    Key key,
    this.tituloNav,
    this.subTituloNav,
    this.total,
    this.btnAppBar
  }) : super(key: key);

  Size get preferredSize => Size.fromHeight(CFr().getHeightNav());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  PreferredSize(
      preferredSize:preferredSize,
      child:AppBar(
      title: Text(tituloNav,style: TextStyle( fontSize: 20.0,fontWeight: FontWeight.w400),),
      backgroundColor: CFr().getColorFondo(),
      elevation:1,
      actions: btnAppBar,
      bottom:PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          decoration: lineaHorizontalTop(CFr().getColorTextNavBar(),CFr().getColorBarraDeTitulo()),
          padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          width: size.width,
          child: AppBarClassicDetail(tituloSc: tituloNav, subTituloSc:subTituloNav, total:total, fecha: "Fecha: 10/12/12",))
        ),
      ),      
    );
  }
}