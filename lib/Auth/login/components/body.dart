import 'package:caysa2021/Auth/components/already_have_an_account_acheck.dart';
import 'package:caysa2021/Auth/components/forgot_password.dart';
import 'package:caysa2021/Auth/components/rounded_bottom.dart';
import 'package:caysa2021/Auth/components/rounded_input_field.dart';
import 'package:caysa2021/Auth/components/rounded_password_field.dart';
import 'package:caysa2021/Auth/forgotPassword/sc_login.dart';
import 'package:caysa2021/Auth/login/components/background.dart';
import 'package:caysa2021/Auth/signup/Sc_SignUp.dart';
import 'package:caysa2021/Auth/signup/components/or_divider.dart';
import 'package:caysa2021/Auth/signup/components/social_icon.dart';
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
                "LOGIN",
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
              ForgotPassword(
                press: (){
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ScForgotPassword();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 20.0),
              RoundedButton(
                color: fcolorBtnLogin,
                fw: FontWeight.w400,
                sizeText: 16,
                text: "Iniciar",
                press: () {},
              ),
              SizedBox(height: 20.0),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ScSignUp();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 20.0),
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