import 'package:caysa2021/app/global_widgets/input_with_icon.dart';
import 'package:caysa2021/app/modules/auth/createuserpassword/createuserpassword_controller.dart';
import 'package:caysa2021/app/modules/auth/createuserpassword/widgets/decoration/body_decoration.dart';
import 'package:caysa2021/app/modules/auth/widgets/rounded_button_auth.dart';
import 'package:caysa2021/app/modules/auth/widgets/titles_auth.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:caysa2021/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BodyCreateUserPassword extends StatelessWidget {
  const BodyCreateUserPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateUserPasswordController>(
      builder: (_)=>Padding(
      padding: const EdgeInsets.fromLTRB(8.0,20.0,8.0,20.0),
      child: BackgroundCreateUserPassword(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(Constants.LOGO_WITH_NAME_WHITE_SVG,height: 150.0, ),
              TitlesAuth(title:"Crear Usuario y Contraseña",sz: 22,),
              TFFieldWithIcon(icono: Icons.person,nombre: "Usuario", placeholder: "Ingrese Usuario",
                  radio:30, isNum:false, changed: _.onUserNameChanged,),
              TFFieldWithIcon(icono: Icons.vpn_key_outlined,nombre: "Password", placeholder: "Ingrese Password",
                  radio:30, isNum:false, changed: _.onPasswordChanged,),
              TFFieldWithIcon(icono: Icons.vpn_key_outlined,nombre: "Repite Password", placeholder: "Repite Password",
                  radio:30, isNum:false, changed: _.onRepitPasswordChanged,),              
              RoundedButtonAuth(color: CF.colorSuccess2(),textColor: Colors.black, fw: FontWeight.w400,sizeText: 14, text: "Crear", press:_.submitCreateAccount,),
              
            ]
          ),
        ),
      ),
      )
    );
  }
}