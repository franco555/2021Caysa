import 'package:caysa2021/app/data/models/request_token.dart';
import 'package:caysa2021/app/data/repositories/local/local_auth_repository.dart';
import 'package:caysa2021/app/data/repositories/remote/authentication_repository.dart';
import 'package:caysa2021/app/routes/app_routes.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  final AuthenticationRepository _authenticationRepository=Get.find<AuthenticationRepository>();
  final LocalAuthRepository _localAuthRepository=Get.find<LocalAuthRepository>();

  String _username="", _password="";
  RxBool seePassword=true.obs;

   void onUsernameChanged(String text){ _username=text;}
   void onPasswordChanged(String text){_password=text;}

   void setShowPassword(){seePassword.value=!seePassword.value;}

   Future<void> submit() async{
      if(this._username.trim()=="" || this._password.trim()==""){
        sanckBar();
        return;
      }

      try {
        RequestToken requestToken= await _authenticationRepository.newRequestToken();
        final RequestToken authRequestToken=await _authenticationRepository.authWithLogin(
          username: this._username, 
          password: this._password, 
          requestToken: requestToken.requestToken
        );
        await _localAuthRepository.setSession(authRequestToken);
        Get.offNamed(AppRoutes.HOME);
      } catch (e) {
        String titulo="Error";
        String message;
       if(e is DioError){
         if(e.response!= null){
          message=e.response.statusMessage;
          if(message=="Unauthorized"){
            titulo="Credenciales Incorrectos";
            message='Usuario o contraseña son incorrectos';
          }
         }else{
           message=e.message;
         }
       }
       Get.dialog(
         AlertDialog(
           title: Text(titulo,style: TextStyle(color: Color(0xFF1A1F1D)),),
           content: Text(message),
           shape: RoundedRectangleBorder(
             borderRadius:BorderRadius.all(Radius.circular(15)),

            ),
           backgroundColor: CF.colorTextAlert(),
           elevation: 2,
           actions: [
             OutlineButton(
               color: Colors.black,
               onPressed: (){Get.back();}, 
               child: Text("OK",style: TextStyle(color: Color(0xFF1A1F1D))))
           ],
         )
         
         );
     }
   }

   void sanckBar(){
     Get.snackbar(
        "Cuidado", 
        "Se necesita Usuario y Contraseña",
        snackPosition: SnackPosition.BOTTOM,
        icon: Icon(Icons.warning, color: CF.colorTextSnackBarSplash(),), 
        shouldIconPulse: true,
        isDismissible: true,
        duration: Duration(seconds: 3),
        colorText: CF.colorTextSnackBarSplash(),
        backgroundColor: CF.colorDanger()
      );
   }

  void goForgotPasword(){
    Get.toNamed(AppRoutes.FORGOTPASSWORD);
  }

  void goCreateAccount(){
    Get.toNamed(AppRoutes.CREATEACCOUNT);
  }
}