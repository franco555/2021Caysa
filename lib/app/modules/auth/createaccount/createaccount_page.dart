import 'package:caysa2021/app/modules/auth/createaccount/widgets/body_createaccount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: ()=>FocusScope.of(context).unfocus(),
          child:BodyCreateAccount() ,
        ),
    );
  }
}