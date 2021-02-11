import 'package:caysa2021/components/other/separadorH.dart';
import 'package:caysa2021/components/modal/modalConfirmation.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
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
                  })
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
        return ModalConfirmation(
          titulo: "¿Desea eliminar?",
          subTitulo: "No se podran recuparar los datos.",
          fn: ()=>{},
        );
      },
    );
  }
  /*_showModal(context){
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("¿Desea eliminar?",style: TextStyle(fontSize: 24),),
              SizedBox(height: 5,),
              Text("No se podran recuparar los datos.",style: TextStyle(fontSize: 16),),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.check), 
                    color: CFr().getColorTextPrecioTotalCard(),
                    onPressed: ()=>{}
                  ),
                  IconButton(
                    icon: Icon(Icons.close), 
                    color: CFr().getColorTextBtnSalir(),
                    onPressed:  () => Navigator.of(context).pop(),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }*/
  
}



