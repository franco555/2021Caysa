import 'package:caysa2021/Auth/components/rounded_bottom.dart';
import 'package:caysa2021/Auth/components/rounded_input_field.dart';
import 'package:caysa2021/Auth/components/rounded_password_field.dart';
import 'package:caysa2021/Auth/login/components/background.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0,20.0,8.0,20.0),
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              SvgPicture.asset(
                "assets/logo/logo_and_name_white.svg",
                height: 150.0,
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "Crear Usuario",
                style: TextStyle(fontWeight: FontWeight.bold, color: fcolorBtnLogin, fontSize: 30.0),
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Usuario",
                onChanged: (value) {},
              ),            
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                repitPassword: true,
                onChanged: (value) {},
              ),
              SizedBox(height: 20.0),
              RoundedButton(
                color: fcolorBtnLogin,
                fw: FontWeight.w400,
                sizeText: 16,
                text: "Crear",
                press: () {},
              ),
              SizedBox(height: 20.0),
            ]
          ),
        ),
      ),
    );
  }
}