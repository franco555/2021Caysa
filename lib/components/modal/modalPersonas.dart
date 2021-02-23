import 'package:caysa2021/components/cards/card_Person.dart';
import 'package:caysa2021/components/inputs/searchAnimated.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ModalSearchPersona extends StatefulWidget {

  final Function fn;
  final String titulo;
  final String subTitulo;
  const ModalSearchPersona({
    Key key,
    this.titulo,
    this.subTitulo,
    this.fn,
  }) : super(key: key);

  @override
  _ModalSearchPersonaState createState() => _ModalSearchPersonaState();
}

class _ModalSearchPersonaState extends State<ModalSearchPersona> {

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
                  tabAppBar([Text("Personas",style: TextStyle(fontSize: 26),)]),
                ],
              ),
              _sectionPersona(size.height-100),
            ],
          ),
    );
  }

  Widget tabAppBar(List<Widget> texto){
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
              color:CFr().getColorAzul400(),
            )
          ],
        ),
        onTap: (){},
      ),
    );
  }

  Widget _sectionPersona(double h){
    return Column(
      children: [
        SizedBox(height: 15,),
        SearchAnimated(colorLinea: CFr().getColorAzul600(),colorIcono: CFr().getColorBlancoTenue(),),        
        SizedBox(height: 20,),
        Container(
          height: h-170,
            child: SingleChildScrollView(
            child: Column(
              children: [
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    especialidad: "Costurero",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                    fn: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed("/envio_Detail");
                    },
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    especialidad: "Costurero",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                    fn: (){Navigator.of(context).pushNamed("/envio_Detail");},
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    especialidad: "Costurero",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                    fn: (){Navigator.of(context).pushNamed("/envio_Detail");},
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    especialidad: "Costurero",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                    fn: (){Navigator.of(context).pushNamed("/envio_Detail");},
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    especialidad: "Cortador",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                    fn: (){Navigator.of(context).pushNamed("/envio_Detail");},
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    especialidad: "Costurero",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                    fn: (){Navigator.of(context).pushNamed("/envio_Detail");},
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    especialidad: "Costurero",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                    fn: (){Navigator.of(context).pushNamed("/envio_Detail");},
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    especialidad: "Costurero",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                    fn: (){Navigator.of(context).pushNamed("/envio_Detail");},
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    especialidad: "Llenador",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                    fn: (){Navigator.of(context).pushNamed("/envio_Detail");},
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}