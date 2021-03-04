import 'package:caysa2021/app/modules/auth/createuserpassword/widgets/body_createuserpassword.dart';
import 'package:flutter/material.dart';

class CreateUserPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: ()=>FocusScope.of(context).unfocus(),
          child:BodyCreateUserPassword() ,
        ),
    );
  }
}