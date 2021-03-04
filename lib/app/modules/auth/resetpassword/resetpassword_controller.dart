import 'package:caysa2021/app/routes/app_routes.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController{
  
  String _code="";

  void onCodeChanged(String text){ _code=text;}

  void submitForgotPassword(){
    if(this._code.trim()==""){ 
      snackBarPersonal("Error","Ingrese Código");
      return;
    }
    if(this._code.length==8){
      //Get.offNamed(AppRoutes.HOME);
      Get.offNamedUntil(AppRoutes.HOME,(_)=>false);
    }else{
      snackBarPersonal("Error","El código es de 8 dígitos");
      return;
    }
    print(this._code);
  }

  void goLogin(){
    Get.toNamed(AppRoutes.LOGIN);
  }
 
  void snackBarPersonal(String title ,String msg){
     Get.snackbar(title,  msg,
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