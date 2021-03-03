import 'package:caysa2021/Auth/components/text_field_container.dart';
import 'package:caysa2021/app/modules/auth/login/login_controller.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordTextFieldLogin extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final bool repitPassword;
  const PasswordTextFieldLogin({
    Key key,
    this.repitPassword=false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_)=>TextFieldContainer(
        child: Obx(()=>TextField(
          obscureText: _.seePassword.value,
          onChanged: onChanged,
          cursorColor: fcolorTxt900,
          decoration: InputDecoration(
            hintText: repitPassword?"Repite password":"Password",
            icon: Icon(
              Icons.lock,
              color: fcolorTxt900,
            ),
            suffixIcon: Container(
              color: Colors.transparent,
              child: InkWell(
                child: Icon(_.seePassword.value?Icons.visibility_outlined:Icons.visibility_off),
                onTap: (){ _.setShowPassword();},
              )
            ),
            border: InputBorder.none,
          ),
        ),
        )
      )
    );
  }
}