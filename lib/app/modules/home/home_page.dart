import 'package:caysa2021/app/global_widgets/appbar/appbar_buttom_down.dart';
import 'package:caysa2021/app/global_widgets/appbar/icono_with_name_in_v.dart';
import 'package:caysa2021/app/modules/home/home_controller.dart';
import 'package:caysa2021/app/modules/home/local_widgets/body_home.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:caysa2021/nav/account.dart';
import 'package:caysa2021/nav/itemNav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Color colorBtnAppBarDown=CF.colorSuccess2();
  Color colorTextAppBar=CF.colorTextAppBar();
  double sizeTxtBtnAppBarDown=36.0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_)=>SafeArea(
        child: Scaffold(
        drawer: Drawer(
          child: Container(
            decoration:BoxDecoration(color: CF.colorFondo(),) ,
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
                ItemNav(titulo: "Envio",color: fcolorTxt200,icono: Icons.send_outlined,ruta: "/envio",),
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
                ItemNav(titulo: "comprobante",color: fcolorTxt200,icono: Icons.settings,ruta: "/comprobante",),
                Divider(height: 1,color: fcolorTxt200,),
                SizedBox(height: 15,),
                ItemNav(titulo: "Salir",color: CF.colorTextSalir(),icono: Icons.settings_power,ruta: "/dashboard",),
                SizedBox(height: 20,),
              ],
            )
          ),
        ),
        appBar:AppBarWithButtomDown(
          tituloNav: "DASHBOARD",
          subTituloNav: "Página Principal",
          colortext:colorTextAppBar,
          altoAppBar: CFr().getAltoAppBar12(),
          btnAppBarAction: [
            IconButton(
              icon: Icon(Icons.more_vert_rounded, color:colorTextAppBar, size: sizeTxtBtnAppBarDown-10,), 
              onPressed: null
            ),
          ],
          btnAppBarDow: Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
              IconoWithNombreInV(nombre:"Nuevo" ,icono:Icons.add ,color:colorBtnAppBarDown,size:sizeTxtBtnAppBarDown,
                fn: (){},
              ),
              IconoWithNombreInV( nombre:"Reporte" ,icono:Icons.equalizer_outlined ,color:colorBtnAppBarDown ,size:sizeTxtBtnAppBarDown,
                fn: (){}, 
              ),
              IconoWithNombreInV(nombre:"Historial" ,icono:Icons.history_outlined ,color:colorBtnAppBarDown , size:sizeTxtBtnAppBarDown,
                fn: (){},
              )
            ],
          ),
        ),
        body: BodyHome(),
    ),
      ),
    );
  }
}