import 'package:caysa2021/components/cards/card_product.dart';
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
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CardProduct(
                imagen: 'assets/logo/logo_white.png',
                titulo: "Unicornio",
                precioUnitario: 50.0,
                cantidad: 21.0,
                estado: "Terminado",
                precioTotal: 150.0,
              ),
            ],
          ),
        )
      ),
    );
  }

  
}
