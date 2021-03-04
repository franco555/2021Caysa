import 'package:caysa2021/app/routes/app_routes.dart';
import 'package:get/get.dart';

class CreateUserPasswordController extends GetxController{
  String _name="", _lastname="", _address="", _dni="", _email="", _phone="", _username="", _password="";

   void onNameChanged(String text){ this._name=text;}
   void onLastNameChanged(String text){ this._lastname=text;}
   void onAddressChanged(String text){ this._address=text;}
   void onDNIChanged(String text){this._dni=text;}
   void onEmailChanged(String text){ this._email=text;}
   void onPhoneChanged(String text){ this._phone=text;}
   void onUserNameChanged(String text){this._username=text;}
   void onPasswordChanged(String text){this._password=text;}

   void submitCreateAccount(){
     String resp='''
      Nombre: ${this._name} 
      Apellido: ${this._lastname} 
      direccion: ${this._address} 
      DNI: ${this._dni} 
      email: ${this._email} 
      Telefono: ${this._phone} 
      Usuario: ${this._username} 
      Password: ${this._password}''';
     
      print(resp);
   }

   void goLogin(){Get.toNamed(AppRoutes.LOGIN);}
   void goCreateUser(){Get.toNamed(AppRoutes.LOGIN);}
}