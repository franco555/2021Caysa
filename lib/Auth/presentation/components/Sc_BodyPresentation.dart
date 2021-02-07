import 'package:caysa2021/Auth/components/rounded_bottom.dart';
import 'package:caysa2021/Auth/login/sc_login.dart';
import 'package:caysa2021/Auth/presentation/components/background.dart';
import 'package:caysa2021/Auth/signup/Sc_SignUp.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScBodyPresentation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background (
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[           
            SvgPicture.asset(
              "assets/logo/logo_and_name_white.svg",
              height: size.width * 0.35,
            ),
            SizedBox(height: 50.0,),
            
            RoundedButton(
              text:"Iniciar",
              sizeText: 18,
              fw: FontWeight.w400,
              color: kTextColorVerdeAgua,
              textColor: Colors.white,
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
            RoundedButton(
              text: "Registrarse",
              color: kTextColorVerde,
              sizeText: 18,
              fw: FontWeight.w300,
              textColor: Colors.black,
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
          ],

        ),
      
    );
  }
}
