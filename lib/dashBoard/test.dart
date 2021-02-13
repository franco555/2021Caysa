
import 'package:caysa2021/components/modal/modalFormSend.dart';
import 'package:caysa2021/components/modal/modalProductoProceso.dart';
import 'package:caysa2021/components/other/separadorH.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:caysa2021/nav/btn_action.dart';
import 'package:caysa2021/nav/customAppBar.dart';
import 'package:flutter/material.dart';
class ScTest extends StatefulWidget {
  @override
  _ScTestState createState() => _ScTestState();
}

class _ScTestState extends State<ScTest> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(
        tituloNav: "Envio",
        tituloSc: "ENVIO DE CORTES",
        subTituloSc: "Alejandro",
        fecha: "10-12-12",
        detail: true,
        widget:[
          BtnAction( icono:Icons.message, color: CFr().getColorTextNavBar(),fn:(){}),
          BtnAction( icono:Icons.notifications_none, color:CFr().getColorTextNavBar(),fn:(){}),
          SizedBox(width: getPadding20 / 2),
        ]
      ) ,
      body:SingleChildScrollView(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SeparadorHorizontal(
                    icono: Icons.list,
                    titulo: "Lista",
                    color: CFr().getColorBtnLogin(),
                    fsize: 18.0,
                  ),
                 MaterialButton(
                   child: Text("Modal"),
                   color: Colors.blueAccent,
                   onPressed: ()=>{
                    _showModal(context)
                  }),
                  MaterialButton(
                   child: Text("Producto Proceso"),
                   color: Colors.blueAccent,
                   onPressed: ()=>{
                    _showModalProductoProceso(context)
                  }),
                ],
              ),
            )
          ),
       
    );
  }

  _showModal(context){
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ModalFormSend(
          titulo: "Formulario de Envío",
          subTitulo: "No se podran recuparar los datos.",
          fn: ()=>{},
        );
      },
    );
  }
  _showModalProductoProceso(context){
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ModalProcutoProceso();
      },
    );
  }

  //Modal de confirmacion
  /*_showModalConfirmation(context){
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ModalConfirmation(
          titulo: "¿Desea eliminar?",
          subTitulo: "No se podran recuparar los datos.",
          fn: ()=>{},
        );
      },
    );
  }*/
}



