import 'package:caysa2021/components/buttoms/iconoWithNombreInVertical.dart';
import 'package:caysa2021/components/cards/cardPersonaList.dart';
import 'package:caysa2021/components/other/separadorHorizontal.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/nav/appBarButtomDown.dart';
import 'package:flutter/material.dart';

class ScSend extends StatefulWidget {
  @override
  _ScSendState createState() => _ScSendState();
}

class _ScSendState extends State<ScSend> {

  Color colorBtnAppBarDown=CFr().getColorBtnRegister();
  Color colorTextAppBar=CFr().getColorTextNavBar();
  double sizeTxtBtnAppBarDown=36.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarButtomDown(
        tituloNav: "Envio",
        subTituloNav: "Sección de envíos",
        colortext:colorTextAppBar,
        btnAppBarAction: [
          IconButton(
            icon: Icon(Icons.more_vert_rounded,color:colorTextAppBar,size: sizeTxtBtnAppBarDown-10,), 
            onPressed: null
          ),
        ],
        btnAppBarDow: Row(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [
            IconoWithNombreInVertical(nombre:"Nuevo" ,icono:Icons.add ,color:colorBtnAppBarDown,size:sizeTxtBtnAppBarDown,fn: (){},),
            IconoWithNombreInVertical( nombre:"Reporte" ,icono:Icons.equalizer_outlined ,color:colorBtnAppBarDown ,size:sizeTxtBtnAppBarDown,fn: (){}, ),
            IconoWithNombreInVertical(nombre:"Historial" ,icono:Icons.history_outlined ,color:colorBtnAppBarDown , size:sizeTxtBtnAppBarDown,fn: (){},)
          ],
        ),
      ) ,
      body:SingleChildScrollView(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SeparadorHorizontal(
                    icono: Icons.list,
                    titulo: "Ultimos Envios",
                    color:CFr().getColorAzul300(),// CFr().getColorBtnLogin(),
                    fsize: 18.0,
                  ),
                  CarPersonaList(
                    imagen: 'assets/logo/logo_white.png',
                    titulo: "Maria",
                    colorFondo:Colors.transparent,
                    colorText: CFr().getColorTextNavBar(),
                    colorLinea: CFr().getColorLineaDown(),
                    proceso:"Costura",
                    estado: "Completo",
                    fecha:"12/12/12",
                    colorSuccess: true,
                    precioTotal: 150.0,
                    fn: ()=>{Navigator.of(context).pushNamed("/detail_recepcion"),},
                  ),
                  
                ],
              ),
            )
          ),
       
    );
  }
}