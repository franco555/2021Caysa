import 'package:flutter/material.dart';

class CFr{
  var isDark;
  CFr({this.isDark=false});

  //tamaño de nav
  double getAltoAppBar14() =>140.0; //->
  double getAltoAppBar12() =>120.0; //->
  double getAltoAppBar6() =>60.0; //valida el bottomBar

  //
  Color getColorFondo() => ColoresFr(isDark: isDark).colorFondo();//->
  Color getColorBarraDeTitulo() => ColoresFr(isDark: isDark).colorBarraDeTitulo();//->

  Color getColorBtnLogin() => ColoresFr(isDark: isDark).colorBtnLogin();//->
  Color getColorBtnRegister() => ColoresFr(isDark: isDark).colorBtnRegister();//->

  //Color de texto
  Color getColorTextTituloCard()=>ColoresFr(isDark: isDark).colorTextTituloCard();// ->
  Color getColorTextPrecioTotalCard()=>ColoresFr(isDark: isDark).colorTextPrecioTotalCard();
  Color getColorTextBtnSalir() => ColoresFr(isDark: isDark).colorTextBtnSalir();//->
  Color getColorTextNavBar() => ColoresFr(isDark: isDark).colorTextNavBar();//->

  //icono
  Color getColorIconoEditar() => ColoresFr(isDark: isDark).colorIconoEditar();//->
  
  Color getColorLinea() => ColoresFr(isDark: isDark).colorLinea();//->
  Color getColorLinea600() => ColoresFr(isDark: isDark).colorLinea600();//->
  Color getColorLineaDown() => ColoresFr(isDark: isDark).colorLineaDow();//->
  
  //Rojo
  Color getColorRojo100() => ColoresFr(isDark: isDark).colorRojo_100();
  Color getColorRojo300() => ColoresFr(isDark: isDark).colorRojo_300();
  Color getColorRojo400() => ColoresFr(isDark: isDark).colorRojo_400();
  Color getColorRojo500() => ColoresFr(isDark: isDark).colorRojo_500();
  Color getColorRojo600() => ColoresFr(isDark: isDark).colorRojo_600();

  //Azul
  Color getColorAzul300() => ColoresFr(isDark: isDark).colorAzul_300();
  Color getColorAzul400() => Color(0xFF59C6D1);
  //Color getColorAzul500() => Color(0xFF04ADBF);
  Color getColorAzul600() => Color(0xFF025373);

  //Colores Genericos
  Color getColorSuccess() => ColoresFr(isDark: isDark).colorTextPrecioTotalCard();
  Color getColorWarning() => ColoresFr(isDark: isDark).colorAmarillo_300();
  Color getColorDanger() => ColoresFr(isDark: isDark).colorTextBtnSalir();
  Color getColorInfo() => ColoresFr(isDark: isDark).colorAzul_300();
  Color getColorSecondary() => ColoresFr(isDark: isDark).colorGris_200();
  Color getColorBlancoTenue() => ColoresFr(isDark: isDark).colorGris_100();


  //TextStile
  TextStyle tsTextTituloCard(color,fsize)=>TextStyle(color:color,fontSize: fsize, fontWeight: FontWeight.w300);
  TextStyle tsTextTituloCardBold(color,fsize)=>TextStyle(color:color,fontSize: fsize, fontWeight: FontWeight.bold);
  
}

class ColoresFr{
  final isDark;
  ColoresFr({this.isDark});

  //colores base
  Color colorFondo()=>isDark ? color0Drark : _colorFondo;
  Color colorBarraDeTitulo()=>isDark ? color0Drark : _colorBarraDeTitulo;

  //Colores Boton
  Color colorBtnLogin()=>isDark ? color0Drark : _colorBtnLogin;
  Color colorBtnRegister()=>isDark ? color0Drark : _colorBtnRegister;

  //colores de Texto 
  Color colorTextTituloCard()=>isDark ? color0Drark : _colorFondo;
  Color colorTextPrecioTotalCard()=>isDark ? color0Drark : _verde_500;
  Color colorTextBtnSalir()=>isDark ? color0Drark : _rojo_200;
  Color colorTextNavBar()=>isDark ? color0Drark : _verde_100;

  //color de linea
  Color colorLinea()=>isDark ? color0Drark : _gris;
  Color colorLinea600()=>isDark ? color0Drark : _gris600;
  Color colorLineaDow()=>isDark ? color0Drark : _colorLineaDown;

  Color colorIconoEditar()=>isDark ? color0Drark : _azul_300;

  Color colorRojo_100()=>isDark ? color0Drark : rojo_100;
  Color colorRojo_300()=>isDark ? color0Drark : rojo_300;
  Color colorRojo_400()=>isDark ? color0Drark : rojo_400;
  Color colorRojo_500()=>isDark ? color0Drark : rojo_500;
  Color colorRojo_600()=>isDark ? color0Drark : rojo_600;

  Color colorAzul_300()=>isDark ? color0Drark : _azul_300; //->

  Color colorAmarillo_300()=>isDark ? color0Drark : Color(0xffFFF948); //->
  Color colorGris_100()=>isDark ? color0Drark : Color(0xffF4F4F4);// ->#
  Color colorGris_200()=>isDark ? color0Drark : Color(0xffD9D9D9);// ->
  

  //variables
  Color _colorFondo=Color(0xFF123E59);
  Color _colorBarraDeTitulo=Color(0xFF1C8C8C);

  Color _colorBtnLogin=Color(0xFF49C6DE);
  Color _colorBtnRegister=Color(0xFF52FA87);

  Color _colorLineaDown=Color(0xFF0d2c3f);


  Color rojo_100=Color(0XffF2B6C1);
  Color _rojo_200=Color(0XffF28599);
  Color rojo_300=Color(0XffF24968);
  Color rojo_400=Color(0XffF2055C);
  Color rojo_500=Color(0XffF23747);
  Color rojo_600=Color(0XffBF3944);

  Color _azul_300=Color(0xFF1ADFFF);
  
  Color _verde_100=Color(0XFFCCFBFC);  
  Color _verde_500=Color(0xFF3DFF7B);

  Color color0Drark=Colors.grey[850];
  Color _gris=Colors.grey[300];
  Color _gris600=Colors.grey[600];
}