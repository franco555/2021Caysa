import 'package:caysa2021/app/modules/auth/forgotpassword/forgotpassword_controller.dart';
import 'package:caysa2021/app/modules/auth/forgotpassword/widgets/decoration/background_forgotpassword.dart';
import 'package:caysa2021/app/modules/auth/login/local_widgets/dinamic/goLogin_login.dart';
import 'package:caysa2021/app/modules/auth/widgets/rounded_button_auth.dart';
import 'package:caysa2021/app/modules/auth/widgets/text_field_auth.dart';
import 'package:caysa2021/app/modules/auth/widgets/titles_auth.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:caysa2021/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BodyForgotPassword extends StatelessWidget {
  const BodyForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPasswordController>(
      builder: (_)=>Padding(
        padding: const EdgeInsets.fromLTRB(8.0,20.0,8.0,20.0),
        child: BackgroundForgotPassword(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(Constants.LOGO_WITH_NAME_WHITE,height: 150.0,),
                TitlesAuth(title:"Recuperar Contraseña"),
                RoundedInputFieldAuth(hintText: "Email", onChanged: _.onEmailChanged,),
                RoundedButtonAuth(color: CF.colorInfo(),fw: FontWeight.w400,sizeText: 16,text: "Enviar", press: _.submitForgotPassword, ),
                GoLogin( press: _.goLogin),
              ],
            ),
          ),
        ),
      )
    );
  }
}