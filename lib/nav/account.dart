import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';

class WgAccount extends StatefulWidget {
  @override
  _WgAccountState createState() => _WgAccountState();
}

class _WgAccountState extends State<WgAccount> {
  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      decoration:BoxDecoration(
        color: CFr().getColorBarraDeTitulo(),
      )  ,
      accountName: Text("Franco", style: TextStyle(color: fcolorTxt100),), 
      accountEmail: Text("Franco@gmail.com", style: TextStyle(color: fcolorTxt100, fontWeight: FontWeight.w500),),
      currentAccountPicture: CircleAvatar(
        backgroundColor: fcolorTxt200,
        backgroundImage: AssetImage("assets/logo/logo_white.png"),
      ),
      otherAccountsPictures: [
        CircleAvatar(
          backgroundColor: CFr().getColorFondo(),
          child: Text("Fr"),
        )
      ],
    );
  }
}