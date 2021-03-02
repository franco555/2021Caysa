import 'package:caysa2021/app/data/models/request_token.dart';
import 'package:caysa2021/app/data/repositories/local/local_auth_repository.dart';
import 'package:caysa2021/app/data/repositories/remote/authentication_repository.dart';
import 'package:caysa2021/app/routes/app_pages.dart';
import 'package:caysa2021/app/routes/app_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  final AuthenticationRepository _authenticationRepository=Get.find<AuthenticationRepository>();
  final LocalAuthRepository _localAuthRepository=Get.find<LocalAuthRepository>();

  String _username="", _password="";

   void onUsernameChanged(String text){
     _username=text;
   }

   void onPasswordChanged(String text){
     _password=text;
   }

   Future<void> submit() async{
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
      String message;
       if(e is DioError){
         if(e.response!= null){
          message=e.response.statusMessage;
         }else{
           message=e.message;
         }
       }
       Get.dialog(
         AlertDialog(
           title: Text("Error"),
           content: Text(message),
           actions: [
             TextButton(onPressed: (){Get.back();}, child: Text("OK"))
           ],
         ));
     }
   }

}