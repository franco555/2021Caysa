import 'package:caysa2021/app/data/models/user.dart';
import 'package:caysa2021/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:get/get.dart';

class CreateUserPasswordController extends GetxController{
  String _repitPassword="";
  UserModel _userModel;

  UserModel get getUser=>_userModel;

  @override
  void onInit(){
    super.onInit();
    this._userModel=Get.arguments as UserModel;
  }
  
   void onUserNameChanged(String text){this._userModel.username=text;}
   void onPasswordChanged(String text){this._userModel.password=text;}
   void onRepitPasswordChanged(String text){this._repitPassword=text;}

   void submitCreateAccount(){

     if(_repitPassword.trim()!=this._userModel.password.trim()){
       sanckBar("Error", "No coinciden las contraseñas");
       return;
      }

     if(_repitPassword.trim()=="" || this._userModel.password.trim()=="" || this._userModel.username.trim()==""){
       sanckBar("Error", "No hay ingresado los campos requerido!");
       return;
     }

     if(validateUserIfExists()){
      sanckBar("Error", "Usuario ya existe!");
      return;
     }
     UserModel u=getUser;
     print("agumentos: ${u.username}");
     goHome();
   }

   void goLogin(){Get.toNamed(AppRoutes.LOGIN);}
   void goHome(){Get.offNamedUntil(AppRoutes.HOME,(_)=>false);} //cierra todas las ventanas

   validateUserIfExists(){
     String response=this._userModel.username.trim();
     print(response);
     return false; //validacion en la base de datos
   }

   void sanckBar(String titulo, String msg){
     Get.snackbar(titulo,msg,
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