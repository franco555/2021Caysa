import 'package:caysa2021/components/imagen/imagenCirculo.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/nav/appBarButtomDown.dart';
import 'package:flutter/material.dart';

class ScComprobante extends StatefulWidget {

  @override
  _ScComprobanteState createState() => _ScComprobanteState();
}

class _ScComprobanteState extends State<ScComprobante> {

  Color colorBtnAppBarDown=CFr().getColorBtnRegister();
  Color colorTextAppBar=CFr().getColorTextNavBar();
  double sizeTxtBtnAppBarDown=36.0;
  TextStyle tsLabel=TextStyle(fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarButtomDown(
        tituloNav: "Comprobante",
        subTituloNav: "Envio ó Recepción",
        colortext:colorTextAppBar,
        altoAppBar: CFr().getAltoAppBar6(), //valida si no tiene botton en debajo
        btnAppBarAction: [
          IconButton(
            icon: Icon(Icons.search,color:colorTextAppBar,size: sizeTxtBtnAppBarDown-10,), 
            onPressed: null
          ),
          IconButton(
            icon: Icon(Icons.print,color:colorTextAppBar,size: sizeTxtBtnAppBarDown-10,), 
            onPressed: null
          ),
        ],
       
      )  ,
      body:Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        decoration: BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(30),),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text("Comprobante"),
                      Text("N° 1235482")
                    ],
                  ),
                ),
              ],
            ),
            _lineaDivisoriaH(),
             Row(
              children: [
                ImagenCirculo(
                  imagen: "assets/logo/logo_white.png",
                  color: CFr().getColorAzul400(),
                  size: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Nombre: ", style: tsLabel),
                        Text("Juana Belascos alvaricoques"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Direccion: ", style: tsLabel),
                        Text("la villa 1 -11 - 14 mz 6 casa 34"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Telefono: ", style: tsLabel),
                        Text("+54 1122344991"),
                      ],
                    )
                  ],
                ),
              ],
            ),
            _lineaDivisoriaH(),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Trabajo: ", style: tsLabel),
                          Text("Costura"),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Fecha: ", style: tsLabel),
                          Text("12-12-12"),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Condición: ", style: tsLabel),
                          Text("Pendiente"),
                        ],
                      ),
                      
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Sub-Total: ", style: tsLabel),
                          Text("\$ 52 365.25 "),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Adelantos: ", style: tsLabel),
                          Text("\$ 2 365.25"),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Total: ", style: tsLabel),
                          Text("\$ 50 000.00"),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            _lineaDivisoriaH(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(color:Color(0xFFF4F2F5), borderRadius: BorderRadius.circular(7),),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(vertical: 2),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Código: " ,style: tsLabel,),
                                  Text("125463258"),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Trabajo: " ,style: tsLabel,),
                                  Text("Llenado"),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Fecha: " ,style: tsLabel,),
                                  Text("12-12-12"),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Total",style: tsLabel,),
                              Text("\$ 52 000", style: TextStyle(fontSize: 16),)
                            ],
                          )
                        ],
                      ),
                    ),
                    
                    
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }

  Container _lineaDivisoriaH(){
    return Container(
      margin: EdgeInsets.symmetric( vertical: 10, horizontal: 0),
      width: double.maxFinite,
      height: 1,
      color: CFr().getColorSecondary(),
    );
  }
}