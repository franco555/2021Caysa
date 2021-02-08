import 'package:caysa2021/Auth/components/already_have_an_account_acheck.dart';
import 'package:caysa2021/Auth/components/rounded_bottom.dart';
import 'package:caysa2021/Auth/components/rounded_input_field.dart';
import 'package:caysa2021/Auth/login/sc_login.dart';
import 'package:caysa2021/Auth/signup/components/background.dart';
import 'package:caysa2021/Auth/signup/components/or_divider.dart';
import 'package:caysa2021/Auth/signup/components/social_icon.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Registrarse",
               style: TextStyle(fontWeight: FontWeight.bold, color: fcolorBtnLogin, fontSize: 30.0),
              ),
              
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/logo/logo_and_name_white.svg",
                height: 100.0,
              ),
              SizedBox(height:30.0),
              RoundedInputField(
                hintText: "Nombres",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Apellidos",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Dirección",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "DNI",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Email",
                onChanged: (value) {},
              ),
               RoundedInputField(
                hintText: "Teléfono",
                onChanged: (value) {},
              ),
              /*RoundedPasswordField(
                onChanged: (value) {},
              ),*/
              RoundedButton(
                text: "SIGNUP",
                color: fcolorBtnRegister,
                 textColor: Colors.black,
                 fw: FontWeight.w500,
                press: () {},
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}