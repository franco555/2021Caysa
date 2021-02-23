import 'package:caysa2021/components/cards/itemCardPersona.dart';
import 'package:caysa2021/components/other/tituloSeccionWithIcono.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/nav/customAppBar.dart';
import 'package:flutter/material.dart';
class ScReceived extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(
        tituloNav: "RECEPCIÓN",
        tituloSc: "RECEPCIÓN DE CORTES",
        subTituloSc: "Alejandro",
        fecha: "10-12-12",
        detailBtn: true,
        btnDetailAppBar: [
          IconButton(
            icon: Icon(Icons.add_circle_outline_outlined,color: CFr().getColorBtnRegister(),size: 36,), 
            onPressed: null
          ),
          IconButton(
            icon: Icon(Icons.history,color: CFr().getColorBtnRegister(),size: 36,), 
            onPressed: null
          ),
        ],
      ) ,
      body:SingleChildScrollView(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TituloSeccionWithIcono(
                    icono: Icons.list,
                    titulo: "Ultimas Recepciones",
                    color: CFr().getColorBtnLogin(),
                    fsize: 18.0,
                  ),
                  ItemCardPersona(
                    imagen: 'assets/logo/logo_white.png',
                    titulo: "Maria",
                    proceso:"Costura",
                    estado: "Completo",
                    colorSuccess: true,
                    precioTotal: 150.0,
                    fn: ()=>{
                      Navigator.of(context).pushNamed("/detail_recepcion"),
                    },
                  ),
                ],
              ),
            )
          ),
       
    );
  }
}