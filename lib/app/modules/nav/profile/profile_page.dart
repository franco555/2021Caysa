import 'package:caysa2021/app/global_widgets/appbar/appbar_buttom_down.dart';
import 'package:caysa2021/app/modules/nav/profile/widgets/body_profile.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:caysa2021/app/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  Color colorBtnAppBarDown=CF.colorSuccess2();
  Color colorTextAppBar=CF.colorTextAppBar();
  Color colorText=CF.colorTextNav();
  double sizeTxtBtnAppBarDown=36.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBarWithButtomDown(
          tituloNav: "PERFIL",
          subTituloNav: "Datos de usuario",
          colortext:colorTextAppBar,
          colorFondo: CF.colorFondoBold(),
          altoAppBar: Constants.getAltoAppBar6(),
        ),
        body: HomeProfile(),
      ),
    );
  }
}