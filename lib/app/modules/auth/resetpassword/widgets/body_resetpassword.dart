import 'package:caysa2021/app/modules/auth/resetpassword/resetpassword_controller.dart';
import 'package:caysa2021/app/modules/auth/resetpassword/widgets/decoration/background_resetpassword.dart';
import 'package:caysa2021/app/modules/auth/widgets/go_login_or_Create_auth.dart';
import 'package:caysa2021/app/modules/auth/widgets/rounded_button_auth.dart';
import 'package:caysa2021/app/modules/auth/widgets/text_field_auth.dart';
import 'package:caysa2021/app/modules/auth/widgets/titles_auth.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:caysa2021/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BodyResetPassword extends StatelessWidget {
  const BodyResetPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResetPasswordController>(
      builder: (_)=>Padding(
      padding: const EdgeInsets.fromLTRB(8.0,20.0,8.0,20.0),
      child: ResetPasswordBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(Constants.LOGO_WITH_NAME_WHITE_SVG,height: 150.0,),
              TitlesAuth(title:"Ingresar Código"),
              RoundedInputFieldAuth(hintText: "Código de 8 digitos", onChanged: _.onCodeChanged,),
              RoundedButtonAuth(color: CF.colorInfo(),fw: FontWeight.w400, sizeText: 16,text: "Validar", press:_.submitForgotPassword,),
              SizedBox(height: 20.0),
              GoLoginOrCreateAuth(login: false, press: _.goLogin,)
            ],
          ),
        ),
      ),
    )
    );
  }
}