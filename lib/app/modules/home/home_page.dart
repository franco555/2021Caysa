import 'package:caysa2021/app/global_widgets/appbar/appbar_buttom_down.dart';
import 'package:caysa2021/app/global_widgets/appbar/icono_with_name_in_v.dart';
import 'package:caysa2021/app/global_widgets/nav/account_nav.dart';
import 'package:caysa2021/app/modules/home/home_controller.dart';
import 'package:caysa2021/app/modules/home/local_widgets/body_home.dart';
import 'package:caysa2021/app/global_widgets/nav/item_nav.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:caysa2021/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Color colorBtnAppBarDown=CF.colorSuccess2();
  Color colorTextAppBar=CF.colorTextAppBar();
  Color colorText=CF.colorTextNav();
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
                AccountNav(
                  name: "Franco Caysahuana",
                  email: "razon20m@gmail.com",
                  image: Constants.LOGO_WHITE_PNG,
                  press: (){},
                ),
                SizedBox(height: 15,),
                ItemNav(titulo: "Inicio", color: colorText, icono: Icons.home,press: (){},),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Compra", color: colorText, icono: Icons.shopping_bag_outlined,press: (){},),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Venta",color: colorText,icono: Icons.local_offer_outlined,press: (){},),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Envio",color: colorText,icono: Icons.send_outlined,press: (){},),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Recepción",color: colorText,icono: Icons.how_to_vote_outlined,press: (){},),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Devolución",color: colorText,icono: Icons.settings_backup_restore,press: (){},),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Pedidos",color: colorText,icono: Icons.campaign_outlined,press: (){},),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Reporte",color: colorText,icono: Icons.equalizer_sharp,press: (){},),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Configuración",color: colorText,icono: Icons.settings,press: (){},),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "comprobante",color: colorText,icono: Icons.settings,press: (){},),
                Divider(height: 1,color: colorText,),
                SizedBox(height: 15,),
                ItemNav(titulo: "Salir",subTitulo: "Cerrar Sessión",color: CF.colorTextSalir(),icono: Icons.settings_power,press: (){},),
                SizedBox(height: 20,),
              ],
            )
          ),
        ),
        appBar:AppBarWithButtomDown(
          tituloNav: "DASHBOARD",
          subTituloNav: "Página Principal",
          colortext:colorTextAppBar,
          altoAppBar: Constants.getAltoAppBar12(),
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