import 'package:caysa2021/components/inputs/dropDownList.dart';
import 'package:caysa2021/components/inputs/textFormField.dart';
import 'package:caysa2021/components/other/tituloFormulario.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';

class ModalFormSend extends StatefulWidget {

  final Function fn;
  final String titulo;
  final String subTitulo;
  const ModalFormSend({
    Key key,
    this.titulo,
    this.subTitulo,
    this.fn,
  }) : super(key: key);

  @override
  _ModalFormSendState createState() => _ModalFormSendState();
}

class _ModalFormSendState extends State<ModalFormSend> {

  String name,email,phone;

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
          height: size.height,
          decoration: BoxDecoration(color: Colors.white,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TituloFormulario(
                imagen: "assets/logo/altopro.png",
                titulo: "Formulario de envio",
                subTitulo: "Detalles de envio",
              ),
              
              Form(
                key: _formkey,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  TextFormFieldGeneric(
                    nombre: "Nombre",
                    icono: Icons.person,
                    validacion: (String value){if(value.isEmpty){ return 'Ingrese Nombre';}return null;},
                    guardar: (String value){name = value;} ,
                  ),
                  TextFormFieldGeneric(
                    nombre: "Apellido",
                    icono: Icons.person,
                    validacion: (String value){if(value.isEmpty){ return 'Ingrese Apelldio';}return null;},
                    guardar: (String value){name = value;} ,
                  ),
                  DropDownListGeneric()
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [                  
                  IconButton(
                    icon: Icon(Icons.check), 
                    color: CFr().getColorTextPrecioTotalCard(),
                    onPressed: widget.fn
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
  }
}
