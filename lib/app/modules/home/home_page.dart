import 'package:caysa2021/app/global_widgets/appbar/appbar_buttom_down.dart';
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
                  press: _.goEditAccount,
                ),
                SizedBox(height: 15,),
                ItemNav(titulo: "Inicio", color: colorText, icono: Icons.home,press: _.goHome,),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Compra", color: colorText, icono: Icons.shopping_bag_outlined,press: _.goPurchase,),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Venta",color: colorText,icono: Icons.local_offer_outlined,press: _.goSale,),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Envio",color: colorText,icono: Icons.send_outlined,press: _.goShipping,),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Recepción",color: colorText,icono: Icons.how_to_vote_outlined,press:_.goReception,),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Devolución",color: colorText,icono: Icons.settings_backup_restore,press: _.goReturn,),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Pedidos",color: colorText,icono: Icons.campaign_outlined,press: _.goOrder,),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Reporte",color: colorText,icono: Icons.equalizer_sharp,press: _.goReport,),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "Configuración",color: colorText,icono: Icons.settings,press: _.goConfiguration,),
                Divider(height: 1,color: colorText,),
                ItemNav(titulo: "comprobante",color: colorText,icono: Icons.settings,press: (){},),
                Divider(height: 1,color: colorText,),
                SizedBox(height: 15,),
                ItemNav(titulo: "Salir",subTitulo: "Cerrar Sessión",color: CF.colorTextSalir(),icono: Icons.settings_power,press:_.logOut,),
                SizedBox(height: 20,),
              ],
            )
          ),
        ),
        appBar:AppBarWithButtomDown(
          tituloNav: "DASHBOARD",
          subTituloNav: "Página Principal",
          colortext:colorTextAppBar,
          colorFondo: CF.colorFondoBold(),
          altoAppBar: Constants.getAltoAppBar14(),
          btnAppBarAction: [
            IconButton(
              icon: Icon(Icons.more_vert_rounded, color:colorTextAppBar, size: sizeTxtBtnAppBarDown-10,), 
              onPressed: null
            ),
          ],
          btnAppBarDown: Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: btnAppBarBottom("Compra","\$ 5 000.00",true),),
              Expanded(child: btnAppBarBottom("Mes","Enero",false),),
              Expanded(child: btnAppBarBottom("Compra","\$ 5 000.00", true),),
            ],
          ),
        ),
        body: BodyHome(),
    ),
      ),
    );
  }

  InkWell btnAppBarBottom(String titulo,String subTitulo, bool colorBorder){
    double radio=10;
    return InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: colorBorder?CF.colorFondoBold():Colors.transparent,
          border: Border.all(color:colorBorder? colorBtnAppBarDown:Colors.transparent),
          borderRadius:BorderRadius.circular(radio), ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15.0),
          child: Column(
            children: [
              Text(subTitulo,style: TextStyle(color: colorBtnAppBarDown, fontSize: 18)),
              Text(titulo, style: TextStyle(color: colorBtnAppBarDown, fontSize: 12),),
            ],
          ),
        ),
      ),
    );
  }
}


/*posicion=="l"?
            BorderRadius.only(
              topLeft: Radius.circular(radio),
              bottomLeft: Radius.circular(radio)
            ):BorderRadius.only(
              topRight: Radius.circular(radio),
              bottomRight: Radius.circular(radio)
            )
        ),*/
/*InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          color: CF.colorFondoBold(),
          border: Border.all(color: Colors.blueAccent),
          border: Border.all(color: colorBtnAppBarDown),
          borderRadius:BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          ),
          borderRadius:BorderRadius.circular(10),
          boxShadow: [ BoxShadow(color: colorBtnAppBarDown, spreadRadius: 1),],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("\$ $monto", style: TextStyle(color: colorBtnAppBarDown),),
              //Container(width: double.infinity, height: 1, color: colorBtnAppBarDown,),
              Text(nombre,style: TextStyle(color: colorBtnAppBarDown, fontSize: 18)),
            ],
          ),
        ),
      ),
    )*/
    /*
    border:posicion=="l"? Border.all(color: colorBtnAppBarDown):Border(
            left: BorderSide(color: colorBtnAppBarDown, width: 1.0,),
            top: BorderSide(color: colorBtnAppBarDown, width: 1.0,),
            right: BorderSide(color: colorBtnAppBarDown, width: 1.0,),
            bottom: BorderSide(color: colorBtnAppBarDown, width: 1.0,),
          ),
     */