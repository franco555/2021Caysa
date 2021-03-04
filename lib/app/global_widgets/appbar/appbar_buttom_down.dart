import 'package:caysa2021/app/global_widgets/appbar/decoration/line_h_bottom.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:flutter/material.dart';

class AppBarWithButtomDown extends StatelessWidget with  PreferredSizeWidget{
  final String tituloNav;
  final String subTituloNav;
  final Color colortext;
  final List<Widget> btnAppBarAction;
  final Widget btnAppBarDow;
  final double altoAppBar;

  const AppBarWithButtomDown({
    Key key,
    this.tituloNav,
    this.subTituloNav,
    this.colortext,
    this.btnAppBarAction,
    this.btnAppBarDow,
    this.altoAppBar
  }) : super(key: key);

  Size get preferredSize => Size.fromHeight(altoAppBar);
  
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
        backgroundColor: CF.colorFondo(),
        elevation:1,
        actions: btnAppBarAction,
        bottom: altoAppBar == 60.0? null : PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            decoration: lineaHBottom(colortext,CF.colorFondo()),
            padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: _size.width,
            child: btnAppBarDow,
          )
        ),
      ),      
    );
  }
}