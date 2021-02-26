import 'package:caysa2021/components/cards/itemCardPersona.dart';
import 'package:caysa2021/components/other/tituloSeccionWithIcono.dart';
import 'package:caysa2021/components/buttoms/iconoWithNombreInVertical.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/nav/appBarButtomDown.dart';
import 'package:flutter/material.dart';

class ScReceived extends StatefulWidget {
  @override
  _ScReceivedState createState() => _ScReceivedState();
}

class _ScReceivedState extends State<ScReceived> {

  Color colorBtnAppBarDown=CFr().getColorBtnRegister();
  Color colorTextAppBar=CFr().getColorTextNavBar();
  double sizeTxtBtnAppBarDown=36.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarButtomDown(
        tituloNav: "Recepción",
        subTituloNav: "Sección de recepción",
        colortext:colorTextAppBar,
        altoAppBar: CFr().getAltoAppBar12(),
        btnAppBarAction: [
          IconButton(
            icon: Icon(Icons.more_vert_rounded,color:colorTextAppBar,size: sizeTxtBtnAppBarDown-10,), 
            onPressed: null
          ),
        ],
        btnAppBarDow: Row(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [
            /*IconoWithNombreInVertical(nombre:"Nuevo" ,icono:Icons.add ,color:colorBtnAppBarDown,size:sizeTxtBtnAppBarDown,
              fn: (){_showModalAddPersona(context);},
            ),*/
            IconoWithNombreInVertical( nombre:"Reporte" ,icono:Icons.equalizer_outlined ,color:colorBtnAppBarDown ,size:sizeTxtBtnAppBarDown,
              fn: (){Navigator.of(context).pushNamed("/envio_Report");}, 
            ),
            IconoWithNombreInVertical(nombre:"Historial" ,icono:Icons.history_outlined ,color:colorBtnAppBarDown , size:sizeTxtBtnAppBarDown,
              fn: (){ Navigator.of(context).pushNamed("/envio_History");},
            )
          ],
        ),
      )  ,
      body:SingleChildScrollView(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TituloSeccionWithIcono(
                    icono: Icons.list,
                    titulo: "Recepciones Pendientes",
                    color: CFr().getColorBtnLogin(),
                    fsize: 18.0,
                  ),
                  ItemCardPersona(
                    imagen: 'assets/logo/logo_white.png',
                    titulo: "Maria",
                    proceso:"Costura",
                    estado: "Completo",
                    colorSuccess: true,
                    colorFondo: Colors.transparent,
                    colorLinea: CFr().getColorAzul600(),
                    colorText: CFr().getColorTextNavBar(),
                    fecha: "154",
                    precioTotal: 150.0,
                    fn: ()=>{
                      Navigator.of(context).pushNamed("/recepcion_Detail"),
                    },
                  ),
                  
                ],
              ),
            )
          ),
       
    );
  }

  /*_showModalAddPersona(context){
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ModalSearchPersona();
      },
    );
  }*/
}