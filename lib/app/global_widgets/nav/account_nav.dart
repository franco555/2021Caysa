import 'package:caysa2021/app/utils/colors.dart';
import 'package:caysa2021/app/utils/constants.dart';
import 'package:flutter/material.dart';

class AccountNav extends StatelessWidget {
  final String name;
  final String email;
  final String image;
  final Function press;
  const AccountNav({
    Key key,
    this.name="Desconocido",
    this.email="Desconocido",
    this.image=Constants.LOGO_WHITE_PNG,
    this.press,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      decoration:BoxDecoration(
        color: CF.colorBackgroundAppbar(),
      )  ,
      accountName: Text(name, style: TextStyle(color: CF.colorTextAppBar()),), 
      accountEmail: Text(email, style: TextStyle(color: CF.colorTextAppBar(), fontWeight: FontWeight.w500),),
      currentAccountPicture: CircleAvatar(
        backgroundColor: CF.colorTextNav(),
        backgroundImage: AssetImage(image),
      ),
      otherAccountsPictures: [
        CircleAvatar(
          backgroundColor: CF.colorFondo(),
          child: InkWell(
            child: Icon(Icons.edit),
            onTap: press,
          ),
        )
      ],
    );
  }
}