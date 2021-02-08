import 'package:caysa2021/Auth/components/rounded_bottom.dart';
import 'package:caysa2021/Auth/components/rounded_input_field.dart';
import 'package:caysa2021/Auth/components/start_login.dart';
import 'package:caysa2021/Auth/create_user/sc_login.dart';
import 'package:caysa2021/Auth/login/components/background.dart';
import 'package:caysa2021/Auth/login/sc_login.dart';
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
                "Ingresar Código",
                style: TextStyle(fontWeight: FontWeight.bold, color: fcolorBtnLogin, fontSize: 30.0),
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Código de 8 digitos",
                onChanged: (value) {},
              ),
              SizedBox(height: 20.0),
              RoundedButton(
                color: fcolorBtnLogin,
                fw: FontWeight.w400,
                sizeText: 16,
                text: "Validar",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ScCreateUser();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 20.0),
              
              StartLogin(
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
            ],
          ),
        ),
      ),
    );
  }
}