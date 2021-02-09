import 'package:caysa2021/constants/constants.dart';
import 'package:caysa2021/nav/account.dart';
import 'package:caysa2021/nav/nav.dart';
import 'package:caysa2021/paginas/home/components/body.dart';
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
            color: kThemeBackgroundColor,
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
              ItemNav(titulo: "Recepción",color: fcolorTxt200,icono: Icons.how_to_vote_outlined,ruta: "/dashboard",),
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
              ItemNav(titulo: "Salir",color: fcolorTxt200,icono: Icons.settings_power,ruta: "/dashboard",),
            ],
          )
        ),
      ),
      appBar: customAppBar(),
      body: Body(),
    );
  }

  PreferredSize customAppBar(){
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: AppBar(
        title: Text("DashBoard"),
        backgroundColor: Colors.transparent,
        elevation:0,
        flexibleSpace: ClipPath(
          clipper: ClippingNav(),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:[
                  kThemeDetailColor,
                  kThemeDetailColor,
                ],
                begin: Alignment.center,
                end:Alignment.centerRight,
                tileMode: TileMode.clamp
              )
            ),
          ),
        ),
         actions: <Widget>[
          IconButton(
            icon: Icon(Icons.message),
            color: fcolorTxt100,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications_none),
            color:fcolorTxt100,
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPaddin / 2),
          
        ],
      ),
    );
  }
/*
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kThemeDetailColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        color: fcolorTxt100,
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.message),
          color: fcolorTxt100,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.notifications_none),
          color:fcolorTxt100,
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2),
         
      ],
      
    );
  }*/
}

class ClippingNav extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width /30, size.height-50,
      size.width/6, size.height-50
      );
    path.lineTo(size.width, size.height-50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}