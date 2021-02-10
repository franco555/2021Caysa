import 'package:flutter/material.dart';

class CFr{
  var isDark;
  CFr({this.isDark=false});

  //tamaño de nav
  double getHeightNav() =>130.0; //->

  //
  Color getColorFondo() => ColoresFr(isDark: isDark).colorFondo();//->
  Color getColorBarraDeTitulo() => ColoresFr(isDark: isDark).colorBarraDeTitulo();//->

  Color getColorBtnLogin() => ColoresFr(isDark: isDark).colorBtnLogin();//->
  Color getColorBtnRegister() => ColoresFr(isDark: isDark).colorBtnRegister();//->
  
  //Rojo
  Color getColorRojo100() => ColoresFr(isDark: isDark).colorRojo_100();
  Color getColorRojo200() => ColoresFr(isDark: isDark).colorRojo_200();//->
  Color getColorRojo300() => ColoresFr(isDark: isDark).colorRojo_300();
  Color getColorRojo400() => ColoresFr(isDark: isDark).colorRojo_400();
  Color getColorRojo500() => ColoresFr(isDark: isDark).colorRojo_500();
  Color getColorRojo600() => ColoresFr(isDark: isDark).colorRojo_600();

  //Azul
  Color getColorAzul500() => ColoresFr(isDark: isDark).colorAzul_500();
  
}

class ColoresFr{
  final isDark;
  ColoresFr({this.isDark});

  Color colorFondo()=>isDark ? color0Drark : _colorFondo;
  Color colorBarraDeTitulo()=>isDark ? color0Drark : _colorBarraDeTitulo;

  Color _colorFondo=Color(0xFF123E59);
  Color _colorBarraDeTitulo=Color(0xFF1C8C8C);

  Color colorBtnLogin()=>isDark ? color0Drark : _colorBtnLogin;
  Color colorBtnRegister()=>isDark ? color0Drark : _colorBtnRegister;

  Color _colorBtnLogin=Color(0xFF49C6DE);
  Color _colorBtnRegister=Color(0xFF52FA87);

  Color colorRojo_100()=>isDark ? color0Drark : rojo_100;
  Color colorRojo_200()=>isDark ? color0Drark : rojo_200;
  Color colorRojo_300()=>isDark ? color0Drark : rojo_300;
  Color colorRojo_400()=>isDark ? color0Drark : rojo_400;
  Color colorRojo_500()=>isDark ? color0Drark : rojo_500;
  Color colorRojo_600()=>isDark ? color0Drark : rojo_600;


  Color rojo_100=Color(0XffF2B6C1);
  Color rojo_200=Color(0XffF28599);
  Color rojo_300=Color(0XffF24968);
  Color rojo_400=Color(0XffF2055C);
  Color rojo_500=Color(0XffF23747);
  Color rojo_600=Color(0XffBF3944);

  Color colorAzul_500()=>isDark ? color0Drark : azul_500;

  Color azul_500=Color(0Xff1980FF);

  Color color0Drark=Colors.grey[850];
}