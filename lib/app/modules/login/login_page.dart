import 'package:caysa2021/app/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {

 const LoginPage ({Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_)=>Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onTap: ()=>FocusScope.of(context).unfocus(),
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: double.infinity,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: "Usuario"),
                    onChanged: _.onUsernameChanged,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Password"),
                     onChanged: _.onPasswordChanged,
                  ),
                  TextButton(
                    onPressed: _.submit, 
                    child: Text("Ingresar"),                    
                  )
                ],
              ) ,
            ),
          ),
        ),
      ),
    );
  }
}