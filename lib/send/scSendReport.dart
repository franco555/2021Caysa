import 'package:caysa2021/components/inputs/date.dart';
import 'package:caysa2021/components/other/tituloSeccionWithIcono.dart';
import 'package:caysa2021/components/progressBar/progreeBar.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/nav/appBarButtomDown.dart';
import 'package:flutter/material.dart';

class ScSendReport extends StatefulWidget {
  @override
  _ScSendReportState createState() => _ScSendReportState();
}

class _ScSendReportState extends State<ScSendReport> {

  Color colorBtnAppBarDown=CFr().getColorBtnRegister();
  Color colorTextAppBar=CFr().getColorTextNavBar();
  double sizeTxtBtnAppBarDown=36.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarButtomDown(
        tituloNav: "Reportes",
        subTituloNav: "De envíos",
        colortext:colorTextAppBar,
        altoAppBar: CFr().getAltoAppBar6(), //si es getAltoAppBar6=60 no se muestra buttom bar
        btnAppBarAction: [
          IconButton(
            icon: Icon(Icons.more_vert_rounded,color:colorTextAppBar,size: sizeTxtBtnAppBarDown-10,), 
            onPressed: null
          ),
        ],
      ) ,
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WgDate(titulo: "Desde",),
              WgDate(titulo: "Hasta",),
            ],
          ),
          TituloSeccionWithIcono(
            icono: Icons.list,
            titulo: "Cortes",
            color:CFr().getColorAzul300(),
            fsize: 18.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                   WgProgressbar(
                     titulo: "Cortes",
                     icono: Icons.list,
                     monto:125 ,
                     porcentaje: 20,
                   )
                  ],
                ),
              )
            ),
          ),
        ],
      ),
       
    );
  }
}