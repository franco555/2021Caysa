import 'package:caysa2021/components/cards/cardPersonaList.dart';
import 'package:caysa2021/components/other/separadorHorizontal.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/nav/appBarButtomDown.dart';
import 'package:caysa2021/nav/customAppBar.dart';
import 'package:flutter/material.dart';
class ScSend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarButtomDown(
        tituloNav: "Envio",
        subTituloNav: "envio DE CORTES",
        total: "5220",
        btnAppBar: [
          IconButton(
            icon: Icon(Icons.more_vert_rounded,color: CFr().getColorBtnRegister(),size: 30,), 
            onPressed: null
          ),
        ],
      ) ,
      body:SingleChildScrollView(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SeparadorHorizontal(
                    icono: Icons.list,
                    titulo: "Ultimos Envios",
                    color: CFr().getColorBtnLogin(),
                    fsize: 18.0,
                  ),
                  CarPersonaList(
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