import 'package:caysa2021/app/global_widgets/input_with_icon.dart';
import 'package:caysa2021/app/modules/auth/createaccount/createaccount_controller.dart';
import 'package:caysa2021/app/modules/auth/createaccount/widgets/decoration/background_createaccount.dart';
import 'package:caysa2021/app/modules/auth/login/local_widgets/static/divider_login.dart';
import 'package:caysa2021/app/modules/auth/widgets/go_login_or_Create_auth.dart';
import 'package:caysa2021/app/modules/auth/widgets/rounded_button_auth.dart';
import 'package:caysa2021/app/modules/auth/widgets/social_icon_auth.dart';
import 'package:caysa2021/app/modules/auth/widgets/titles_auth.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:caysa2021/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BodyCreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateAccountController>(
      builder: (_)=>BackgroundCreateAccount(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[              
              SvgPicture.asset(Constants.LOGO_WITH_NAME_WHITE,height: 100.0, ),
              TitlesAuth(title:"CREAR CUENTA",sz: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIconAuth(iconSrc: Constants.ICONO_FACEBOOK, press: () {},),
                  SocialIconAuth(iconSrc: Constants.ICONO_TWITTER,press: () {},),
                  SocialIconAuth(iconSrc: Constants.ICONO_GOOGLE, press: () {},),
                ],
              ),
              OrDividerLogin(),
              TFFieldWithIcon(icono: Icons.person,nombre: "Nombres", placeholder: "Ingrese nombre",
                  radio:30, isNum:false, changed: _.onNameChanged,),
              TFFieldWithIcon(icono: Icons.person,nombre: "Apellidos", placeholder: "Ingrese apellido",
                  radio:30, isNum:false, changed: _.onLastNameChanged,),
              TFFieldWithIcon(icono: Icons.person_pin_circle,nombre: "Dirección", placeholder: "Ingrese Dirección",
                  radio:30, isNum:false, changed: _.onAddressChanged,),
              TFFieldWithIcon(icono: Icons.card_membership,nombre: "DNI", placeholder: "Ingrese DNI",
                  radio:30, isNum:true, changed: _.onDNIChanged,),
              TFFieldWithIcon(icono: Icons.email_outlined,nombre: "E-mail", placeholder: "Ingrese E-mail",
                  radio:30, isNum:false, changed: _.onEmailChanged,),
              TFFieldWithIcon(icono: Icons.phone,nombre: "Teléfono", placeholder: "Ingrese Teléfono",
                  radio:30, isNum:true, changed: _.onPhoneChanged,),
              RoundedButtonAuth(color: CF.colorSuccess2(),textColor: Colors.black, fw: FontWeight.w400,sizeText: 14, text: "Crear", press:_.submitCreateAccount,),
              GoLoginOrCreateAuth(login: false,press:_.goLogin,),
            ],
          ),
        ),
      ),
      )
    );
  }
}