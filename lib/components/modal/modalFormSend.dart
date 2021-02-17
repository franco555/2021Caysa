import 'package:caysa2021/components/buttoms/btnForm.dart';
import 'package:caysa2021/components/inputs/dropDownList.dart';
import 'package:caysa2021/components/inputs/textFormFieldWithIcon.dart';
import 'package:caysa2021/components/other/tituloFormularioWithImagen.dart';
import 'package:caysa2021/components/other/validation.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  int tabNav=3;

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  TextEditingController _cantidad = TextEditingController();
  TextEditingController _precio = TextEditingController();
  TextEditingController _precioTotal = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
          height: size.height-100,
          decoration: BoxDecoration(color: Colors.white,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tabAppBar([Text("Persona")],1),
                  tabAppBar([Text("Producto y"),Text("Proceso")],2),
                  tabAppBar([Text("Cantidad")],3),
                ],
              ),
              tabNav == 1? _sectionPersona() : (tabNav == 2 ?_sectionProductoProceso() : _sectioncantidad())
              
            ],
          ),
    );
  }

  Widget tabAppBar(List<Widget> texto, int item){
    return Expanded(
      child: InkWell(
        child: Column(
          children: [
            Container(
              height: 60,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: texto,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              height: 3,
              color: tabNav==item ? CFr().getColorAzul400() : CFr().getColorSecondary(),
            )
          ],
        ),
        onTap: (){
          setState(() {
            tabNav=item;
          });
        },
      ),
    );
  }

  Widget _sectionPersona(){
    return Column(
      children: [
        TituloFormularioWhithImagen(
          imagen: "assets/logo/altopro.png",
          titulo: "Fernando Calderon ${_precio.text}",
          subTitulo: "Agregando nuevo envío ${_cantidad.text}",
        ),
        Form(
          key: _formkey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            /*TextFormFieldWithIconGeneric(
              nombre: "Nombre",
              icono: Icons.person,
              validacion: (String value){if(value.isEmpty){ return 'Ingrese Nombre';}return null;},
              guardar: (String value){name = value;} ,
            ),*/
            DropDownListGeneric(titulo: "Preceso",),
            DropDownListGeneric(titulo: "Producto",),
            TextFormFieldWithIconGeneric(
              icono: Icons.monetization_on,
              nombre: "Precio Unidad",
              placeholder: "\$/ 00.0",
              isNum:true,
              controller: _precio,
              guardar:(value){_precio=value;},
              validacion:validatePrecio,
            ),
            TextFormFieldWithIconGeneric(
              icono: Icons.format_list_numbered_sharp,
              nombre: "Cantidad",
              placeholder: "0",
              isNum:true,
              controller: _cantidad,
              guardar:(value){_cantidad = value;},
              validacion: validateNumero,
            ),
            TextFormFieldWithIconGeneric(
              icono: Icons.monetization_on_outlined,
              nombre: "Total",
              placeholder:  "\$/ 00.0",
              isNum:true,
              controller: _precioTotal,
              guardar:(value){_precioTotal =value;},
              validacion: validatePrecioTotal,
            ),
            //DatePickerGeneric()
          ]),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BtnForm(
              texto:"Guardar" ,
              color: CFr().getColorTextPrecioTotalCard(),
              icono: Icons.save,
              fn: (){ save();},
            ),
            BtnForm(
              texto:"Cancelar" ,
              color: CFr().getColorTextBtnSalir(),
              icono: Icons.close,
              fn: () => Navigator.of(context).pop(),
            ),
          ],
        )
      ],
    );
  }

  Widget _sectionProductoProceso(){
    return Text("segunda");
  }

  Widget _sectioncantidad(){
    return Text("tercera");
  }

  save() {
    if (_formkey.currentState.validate()) {
      print("Cantidad $_cantidad");
      //_formkey.currentState.reset();
    }
  }

  

  format(double numero){
    final oCcy = new NumberFormat("#,##0.00", "en_US");
    final result=oCcy.format(numero);
    print(result);
    return result;
  }
}
