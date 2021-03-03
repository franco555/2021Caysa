import 'package:caysa2021/app/routes/app_routes.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController{
  
  String _email="";

  void onEmailChanged(String text){ _email=text;}

  void submitForgotPassword(){
    if(this._email.trim()==""){ 
      snackBarPersonal("Se necesita un E-mail");
      return;
    }

    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this._email);
    
    if(emailValid){
      goResetPassword();
    }else{
      snackBarPersonal("E-mail inválido");
      return;
    }
    print(this._email);
  }

  void goLogin(){
    Get.toNamed(AppRoutes.LOGIN);
  }

  void goResetPassword(){
    Get.toNamed(AppRoutes.LOGIN);
  }

  void snackBarPersonal(String msg){
     Get.snackbar(
        "Cuidado!", 
        msg,
        snackPosition: SnackPosition.BOTTOM,
        icon: Icon(Icons.warning, color: CF.colorTextSnackBarSplash(),), 
        shouldIconPulse: true,
        isDismissible: true,
        duration: Duration(seconds: 3),
        colorText: CF.colorTextSnackBarSplash(),
        backgroundColor: CF.colorDanger()
      );
   }

}