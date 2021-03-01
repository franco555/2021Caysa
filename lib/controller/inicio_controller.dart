import 'package:get/get.dart';

class InicioController extends GetxController{
  int _counter=0;

  int get counter=>_counter;

  @override
  void onInit(){
    super.onInit();
    print("Iniciado Inicio");
  }  

  @override
  void onReady(){
    super.onReady();
    print("Componente rederizados");
  }  

  void increment(){
    this._counter++;
    update(['text']);
  }
}