import 'package:caysa2021/components/cards/itemCardPersona.dart';
import 'package:caysa2021/components/inputs/searchAnimated.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/nav/appBarButtomDown.dart';
import 'package:flutter/material.dart';

class ScReceivedHistory extends StatefulWidget {
  @override
  _ScReceivedHistoryState createState() => _ScReceivedHistoryState();
}

class _ScReceivedHistoryState extends State<ScReceivedHistory> {

  Color colorBtnAppBarDown=CFr().getColorBtnRegister();
  Color colorTextAppBar=CFr().getColorTextNavBar();
  double sizeTxtBtnAppBarDown=36.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarButtomDown(
        tituloNav: "Historial",
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
          SearchAnimated(colorLinea: Colors.white,colorIcono: Colors.black,),
          Expanded(
            child: SingleChildScrollView(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ItemCardPersona(
                      imagen: 'assets/logo/logo_white.png',
                      titulo: "Maria",
                      colorFondo:Colors.transparent,
                      colorText: CFr().getColorTextNavBar(),
                      colorLinea: CFr().getColorLineaDown(),
                      proceso:"Costura",
                      estado: "Enviado",
                      fecha:"12/12/12",
                      colorSuccess: true,
                      precioTotal: 150.0,
                      fn: ()=>{Navigator.of(context).pushNamed("/detail_recepcion"),},
                    ),
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