import 'package:caysa2021/app/data/models/user.dart';
import 'package:caysa2021/app/routes/app_routes.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController{
  String _name="", _lastname="", _address="", _dni="", _email="", _phone="";  
  bool isEmpty=false;

  void onNameChanged(String text){ this._name=text;}
  void onLastNameChanged(String text){ this._lastname=text;}
  void onAddressChanged(String text){ this._address=text;}
  void onDNIChanged(String text){this._dni=text;}
  void onEmailChanged(String text){ this._email=text;}
  void onPhoneChanged(String text){ this._phone=text;}

   void submitCreateAccount(){
     
    final UserModel createAccount=new UserModel(
      id: "0",
      name: validateInput(_name), 
      lastname:validateInput(_lastname), 
      address: validateInput(_address), 
      dni: validateInput(_dni), 
      email: validateInput(_email), 
      phone: validateInput(_phone), 
      username: "", 
      password: "", 
    );

    if(isEmpty){
      sanckBar("Error", "Complete todos los campos!");
      isEmpty=false;
      return;
    }
     Get.toNamed(AppRoutes.CREATE_USERPASSWORD, arguments: createAccount);
   }

   validateInput(data){
     String value=data.trim();
     if(!isEmpty){
      isEmpty=value==""?true:false;
     }
     return value;
   }

   void goLogin(){Get.toNamed(AppRoutes.LOGIN);}

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