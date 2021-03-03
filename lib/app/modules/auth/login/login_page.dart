import 'package:caysa2021/app/modules/auth/login/local_widgets/body_login.dart';
import 'package:caysa2021/app/modules/auth/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {

 const LoginPage ({Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_)=>Scaffold(
        body: GestureDetector(
          onTap: ()=>FocusScope.of(context).unfocus(),
          child:BodyLogin()
        )
      ),
    );
  }
}