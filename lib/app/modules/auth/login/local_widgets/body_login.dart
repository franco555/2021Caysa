import 'package:caysa2021/app/modules/auth/login/local_widgets/decoration/background_login.dart';
import 'package:caysa2021/app/modules/auth/login/local_widgets/dinamic/create_account_login.dart';
import 'package:caysa2021/app/modules/auth/widgets/rounded_button_auth.dart';
import 'package:caysa2021/app/modules/auth/widgets/text_field_auth.dart';
import 'package:caysa2021/app/modules/auth/login/local_widgets/dinamic/forgotPassword_login.dart';
import 'package:caysa2021/app/modules/auth/login/local_widgets/password_textField_login.dart';
import 'package:caysa2021/app/modules/auth/widgets/social_icon_auth.dart';
import 'package:caysa2021/app/modules/auth/login/local_widgets/static/divider_login.dart';
import 'package:caysa2021/app/modules/auth/widgets/titles_auth.dart';
import 'package:caysa2021/app/modules/auth/login/login_controller.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:caysa2021/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_)=>Padding(
      padding: const EdgeInsets.fromLTRB(8.0,20.0,8.0,20.0),
      child: BackgroundLogin(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[              
              SvgPicture.asset(Constants.LOGO_WITH_NAME_WHITE,height: 150.0, ),
              TitlesAuth(title:"LOGIN"),
              
              RoundedInputFieldAuth(hintText: "Usuario",onChanged: _.onUsernameChanged,),            
              PasswordTextFieldLogin(onChanged: _.onPasswordChanged,),
              ForgotPasswordLogin(press: _.goForgotPasword,),
              SizedBox(height: 20.0),
              RoundedButtonAuth(color: CF.colorInfo(), fw: FontWeight.w400,sizeText: 16, text: "Iniciar", press: _.submit,),
              SizedBox(height: 20.0),
              CreateAccountLogin(press:_.goCreateAccount,),
              SizedBox(height: 20.0),
              OrDividerLogin(),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIconAuth(iconSrc: Constants.ICONO_FACEBOOK, press: () {},),
                  SocialIconAuth(iconSrc: Constants.ICONO_TWITTER,press: () {},),
                  SocialIconAuth(iconSrc: Constants.ICONO_GOOGLE, press: () {},),
                ],
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}