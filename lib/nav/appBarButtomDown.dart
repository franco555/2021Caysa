import 'package:caysa2021/components/styles/inputDecoration.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';

class AppBarButtomDown extends StatelessWidget with  PreferredSizeWidget{
  final String tituloNav;
  final String subTituloNav;
  final Color colortext;
  final List<Widget> btnAppBarAction;
  final Widget btnAppBarDow;

  const AppBarButtomDown({
    Key key,
    this.tituloNav,
    this.subTituloNav,
    this.colortext,
    this.btnAppBarAction,
    this.btnAppBarDow
  }) : super(key: key);

  Size get preferredSize => Size.fromHeight(CFr().getAltoAppBar12());
  

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return  PreferredSize(
      preferredSize:preferredSize,
      child:AppBar(
      title:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tituloNav,style: TextStyle(color: colortext, fontSize: 20.0,fontWeight: FontWeight.w400),),
          Text(subTituloNav,style: TextStyle(color: colortext, fontSize: 12.0,fontWeight: FontWeight.w400),)
        ],
      ),
      backgroundColor: CFr().getColorFondo(),
      elevation:1,
      actions: btnAppBarAction,
      bottom:PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          decoration: lineaHorizontalBottom(colortext,CFr().getColorFondo()),
          padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          width: _size.width,
          child: btnAppBarDow,
        )
        ),
      ),      
    );
  }
}