import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:caysa2021/nav/account.dart';
import 'package:caysa2021/nav/itemNav.dart';
import 'package:caysa2021/dashboard/components/body.dart';
import 'package:caysa2021/nav/customAppBar.dart';
import 'package:flutter/material.dart';
//https://www.youtube.com/watch?v=XBKzpTz65Io
class ScDashBoard extends StatefulWidget {
  ScDashBoard({Key key}) : super(key: key);
  @override
  _ScDashBoardState createState() => _ScDashBoardState();
}

class _ScDashBoardState extends State<ScDashBoard> {


  @override
  Widget build(BuildContext context) {
   //final authService = Provider.of<AuthService>(context);
    return Scaffold(
      drawer: Drawer(
        child: Container(
          decoration:BoxDecoration(
            color: CFr().getColorFondo(),
          ) ,
          //color: Colors.white70,
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              WgAccount(),
              SizedBox(height: 15,),
              ItemNav(titulo: "Inicio", color: fcolorTxt200, icono: Icons.home, ruta: "/dashboard",),
              Divider(height: 1,color: fcolorTxt200,),
              ItemNav(titulo: "Compra", color: fcolorTxt200, icono: Icons.shopping_bag_outlined,ruta: "/dashboard",),
              Divider(height: 1,color: fcolorTxt200,),
              ItemNav(titulo: "Venta",color: fcolorTxt200,icono: Icons.local_offer_outlined,ruta: "/dashboard",),
              Divider(height: 1,color: fcolorTxt200,),
              ItemNav(titulo: "Envio",color: fcolorTxt200,icono: Icons.send_outlined,ruta: "/dashboard",),
              Divider(height: 1,color: fcolorTxt200,),
              ItemNav(titulo: "Recepción",color: fcolorTxt200,icono: Icons.how_to_vote_outlined,ruta: "/recepcion",),
              Divider(height: 1,color: fcolorTxt200,),
              ItemNav(titulo: "Devolución",color: fcolorTxt200,icono: Icons.settings_backup_restore,ruta: "/dashboard",),
              Divider(height: 1,color: fcolorTxt200,),
              ItemNav(titulo: "Pedidos",color: fcolorTxt200,icono: Icons.campaign_outlined,ruta: "/dashboard",),
              Divider(height: 1,color: fcolorTxt200,),
              ItemNav(titulo: "Reporte",color: fcolorTxt200,icono: Icons.equalizer_sharp,ruta: "/dashboard",),
              Divider(height: 1,color: fcolorTxt200,),
              ItemNav(titulo: "Configuración",color: fcolorTxt200,icono: Icons.settings,ruta: "/dashboard",),
              Divider(height: 1,color: fcolorTxt200,),
              SizedBox(height: 15,),
              ItemNav(titulo: "Salir",color: CFr().getColorTextBtnSalir(),icono: Icons.settings_power,ruta: "/dashboard",),
              SizedBox(height: 20,),
            ],
          )
        ),
      ),
      appBar:CustomAppBar(
        tituloNav: "DashBoard",
        tituloSc: "Cortes",
        subTituloSc: "Alejandro",
        fecha: "10-12-12",
        detail: false,
      ) ,
      body: Body(),
    );
  }
}

