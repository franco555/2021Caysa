import 'package:caysa2021/components/cards/itemFormularioDetail.dart';
import 'package:caysa2021/components/labels/tituloAndBtn.dart';
import 'package:caysa2021/components/modal/modalConfirmation.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/nav/appBarClassic.dart';
import 'package:flutter/material.dart';
class ScReceivedDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarClassic(
        tituloNav: "Detalle de Recepción",
        subTituloNav: "Alantite montereal",
        total:"\$ 0",
        btnAppBar: [
          IconButton(
            icon: Icon(Icons.download_outlined,color: CFr().getColorTextNavBar(),size: 26,), 
            onPressed: (){print("Descagado");}
          ),
          IconButton(
            icon: Icon(Icons.save,color: CFr().getColorTextNavBar(),size: 26,), 
            onPressed: (){print("Guardado");}
          ),
        ],
      ) ,
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child:Container(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              TituloAndBtn(
                iconoOfTitulo: Icons.list,
                iconoOfBtn: Icons.check,
                titulo: "Productos",
                color: CFr().getColorBtnLogin(),
                fsize: 18.0,
                fn:(){_showModalProductoProceso(context);}
              ),              
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ItemFormularioDetail(
                        imagen: 'assets/logo/logo_white.png',
                        titulo: "Unicornio",
                        precioUnitario: 50.0,
                        cantidad: 21.0,
                        estado: "Cortes",
                        precioTotal: 150.0,
                        isDelete: false,
                      ),
                      ItemFormularioDetail(
                        imagen: 'assets/logo/logo_white.png',
                        titulo: "Unicornio",
                        precioUnitario: 50.0,
                        cantidad: 21.0,
                        estado: "Cortes",
                        precioTotal: 150.0,
                        isDelete: false,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }

  _showModalProductoProceso(context){
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ModalConfirmation(
          titulo: "Guardar!",
          subTitulo: "Asegurese de verificar los items.",
          fn: (){},
        );
      },
    );
  }

  /*_showModalFormulario(context){
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ModalFormSend(
          titulo: "Formulario de Envío",
          subTitulo: "No se podran recuparar los datos.",
          fn: (){},
        );
      },
    );
  }*/
}