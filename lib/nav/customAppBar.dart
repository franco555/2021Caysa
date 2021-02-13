import 'package:caysa2021/components/clipper/clipperNav.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:caysa2021/nav/btn_action.dart';
import 'package:caysa2021/nav/detailAppBar.dart';
import 'package:caysa2021/nav/detailGeneric.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with  PreferredSizeWidget{
  final String tituloNav;
  final String tituloSc;
  final String subTituloSc;
  final String fecha;
  final bool detail;
  final List<Widget> widget;

  const CustomAppBar({
    Key key,
    this.tituloNav,
    this.tituloSc,
    this.subTituloSc,
    this.fecha,
    this.detail=false,
    this.widget
  }) : super(key: key);

  Size get preferredSize => Size.fromHeight(CFr().getHeightNav());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  PreferredSize(
        preferredSize:preferredSize,
        child:AppBar(
        title: Text(tituloNav),
        backgroundColor: Colors.transparent,
        elevation:0,
        flexibleSpace: ClipPath(
          clipper: ClippingNav(),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:[
                  CFr().getColorBarraDeTitulo(),
                  CFr().getColorBarraDeTitulo(),
                ],
                begin: Alignment.center,
                end:Alignment.centerRight,
                tileMode: TileMode.clamp
              )
            ),
          ),
        ),
        actions: widget,
         /*actions: <Widget>[
          BtnAction( icono:Icons.message, color: CFr().getColorTextNavBar(),fn:(){}),
          BtnAction( icono:Icons.notifications_none, color:CFr().getColorTextNavBar(),fn:(){}),
          SizedBox(width: getPadding20 / 2),
        ],*/
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Container(
            width: size.width*0.95,
            child: detail?DetailAppBar(tituloSc: tituloSc, subTituloSc: subTituloSc, fecha: fecha,):DetailGeneric(titulo: "DATOS GRAFICOS",)
          ),
        ),
        )
    );
  }
}