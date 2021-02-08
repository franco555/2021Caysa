import 'package:flutter/material.dart';

class Fr{
  var isDark;
  Fr({this.isDark=false});

  Color getColorNav() => EstiloColores(isDark: isDark).getColor4();
  Color getColorBg() =>  EstiloColores(isDark: isDark).getColor0();
  Color getColorItemCard() => EstiloColores(isDark: isDark).getColor2();
  Color getColorBorde() => EstiloColores(isDark: isDark).getColor2();
  Color getColorBordei() => EstiloColores(isDark: isDark).getColorBorder();
  Color getColorBordeBottom() => EstiloColores(isDark: isDark).getColorBorderBottom();

  TextStyle getTsTituloNav() => EstilosTextStyle(isDark: isDark).getTsTituloNav();
  TextStyle getTsSubTituloNav() =>  EstilosTextStyle(isDark: isDark).getTsSubTituloNav();

  TextStyle getTsText22B() =>  EstilosTextStyle(isDark: isDark).getTsText22B();
  TextStyle getTsText22() =>  EstilosTextStyle(isDark: isDark).getTsText22();
  TextStyle getTsText20B() =>  EstilosTextStyle(isDark: isDark).getTsText20B();
  TextStyle getTsText20() =>  EstilosTextStyle(isDark: isDark).getTsText20();
  TextStyle getTsText18B() =>  EstilosTextStyle(isDark: isDark).getTsText18B();
  TextStyle getTsText18() =>  EstilosTextStyle(isDark: isDark).getTsText18();
  TextStyle getTsText16B() =>  EstilosTextStyle(isDark: isDark).getTsText16B();
  TextStyle getTsText16() =>  EstilosTextStyle(isDark: isDark).getTsText16();
  TextStyle getTsText14B() =>  EstilosTextStyle(isDark: isDark).getTsText14B();
  TextStyle getTsText14() =>  EstilosTextStyle(isDark: isDark).getTsText14();
  TextStyle getTsText12B() =>  EstilosTextStyle(isDark: isDark).getTsText12B();
  TextStyle getTsText12() =>  EstilosTextStyle(isDark: isDark).getTsText12();
  TextStyle getTsText10B() =>  EstilosTextStyle(isDark: isDark).getTsText10B();
  TextStyle getTsText10() =>  EstilosTextStyle(isDark: isDark).getTsText10();

  BoxDecoration getBoxdContainer()=>EstilosBoxShadow(isDark: isDark).getBoxShadowContainer();
  BoxDecoration getBoxdButtom()=>EstilosBoxShadow(isDark: isDark).getBoxShadowButtom();
  
}

class EstiloColores{
  final isDark;
  EstiloColores({this.isDark});

  Color getColor0()=>isDark ? color0Drark : color0;//BackGround
  Color getColor1()=>isDark ? def : color1;//ItemCard
  Color getColor2()=>isDark ? color2Drark : color2;//BOrder
  Color getColor3()=>isDark ? def : color3;
  Color getColor4()=>isDark ? color4Drark : color4;//Nav
  Color getColor5()=>isDark ? def : color5;
  Color getColor6()=>isDark ? def : color6;
  Color getColor7()=>isDark ? def : color7;
  Color getColor8()=>isDark ? def : color8;
  Color getColorWhiteOrBlack()=>isDark ? colorWhite : colorWhite;
  Color getColorGray()=>isDark ? colorWhite : colorGray;
  Color getColorBorder()=>isDark ? color1 : color4;
  Color getColorBorderBottom()=>isDark ? color2 : color1;

  Color color0=Color(0XffCDDEEC);//BackGround
    Color color0Drark=Colors.grey[850];
  Color color1=Color(0xff8db4d4);//ItemCard
  Color color2=Colors.white30;//BOrder
    Color color2Drark=Color(0xff5a92c1);
  Color color3=Color(0xff3e76a5);
  Color color4=Color(0xff325e84);//Nav
    Color color4Drark=Colors.black54;
  Color color5=Color(0xff284b6a);
  Color color6=Color(0xff203c55);
  Color color7=Color(0xff1a3044);
  Color color8=Color(0xff152636);
  Color colorWhite=Colors.white70;
    Color colorBlack=Colors.black54;
  
  Color colorGray=Colors.black54;

  Color def=Colors.red;
}

class EstilosTextStyle{
  final isDark;
  EstilosTextStyle({this.isDark=false});
  
  TextStyle getTsTituloNav()=>TextStyle(color: EstiloColores(isDark: isDark).getColorWhiteOrBlack(), fontSize: 20.0);
  TextStyle getTsSubTituloNav()=>TextStyle(color: EstiloColores(isDark: isDark).getColorWhiteOrBlack(),fontSize: 12.0, fontWeight: FontWeight.w300);
  
  TextStyle getTsText22B()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 22.0, fontWeight: FontWeight.bold);
  TextStyle getTsText22()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 22.0, fontWeight: FontWeight.w400);
  TextStyle getTsText20B()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 20.0, fontWeight: FontWeight.bold);
  TextStyle getTsText20()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 20.0, fontWeight: FontWeight.w400);
  TextStyle getTsText18B()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 18.0, fontWeight: FontWeight.bold);
  TextStyle getTsText18()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 18.0, fontWeight: FontWeight.w400);
  TextStyle getTsText16B()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 16.0, fontWeight: FontWeight.bold);
  TextStyle getTsText16()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 16.0, fontWeight: FontWeight.w400);
  TextStyle getTsText14B()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 14.0, fontWeight: FontWeight.bold);
  TextStyle getTsText14()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 14.0, fontWeight: FontWeight.w400);
  TextStyle getTsText12B()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 12.0, fontWeight: FontWeight.bold);
  TextStyle getTsText12()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 12.0, fontWeight: FontWeight.w400);
  TextStyle getTsText10B()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 10.0, fontWeight: FontWeight.bold);
  TextStyle getTsText10()=>TextStyle(color:EstiloColores(isDark: isDark).getColorGray(),fontSize: 10.0, fontWeight: FontWeight.w400);
}

class EstilosBoxShadow{
  final isDark;
  EstilosBoxShadow({this.isDark=false});

  BoxDecoration getBoxShadowContainer() =>BoxDecoration(
    color: Fr(isDark: isDark).getColorBg(),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    boxShadow: [
      BoxShadow(blurRadius: 3.0, offset: Offset(-3, -3),color: isDark?Colors.black54:Colors.white.withOpacity(0.7)),
      BoxShadow(blurRadius: 5.0,offset: Offset(3, 3),color: isDark?Colors.grey[800]:Colors.black.withOpacity(0.15))
    ]
  );

   BoxDecoration getBoxShadowButtom() =>BoxDecoration(
    color: Fr(isDark: isDark).getColorBorde(),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    boxShadow: [
      BoxShadow(blurRadius: 2.0, offset: Offset(-1, -1),color: isDark?Colors.black54:Colors.white.withOpacity(0.7)),
      BoxShadow(blurRadius: 2.0,offset: Offset(2, 3),color: isDark?Colors.grey[800]:Colors.black.withOpacity(0.15))
    ]
  );
}