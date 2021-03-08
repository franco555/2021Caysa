import 'package:caysa2021/app/data/models/movie.dart';
import 'package:caysa2021/app/data/repositories/local/local_auth_repository.dart';
import 'package:caysa2021/app/data/repositories/remote/movies_repository.dart';
import 'package:caysa2021/app/routes/app_routes.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  final LocalAuthRepository _localAuthRepository=Get.find<LocalAuthRepository>();
  final MoviesRepository _moviesRepository=Get.find<MoviesRepository>();

  List<Movie> _movies=[];
  List<Movie> get getMovies=>_movies;

  Future<void>logOut() async{
    await _localAuthRepository.clearSession();
    //Get.offNamedUntil(AppRoutes.LOGIN, (_) => false);
    snackBarPersonal("Estas en salir","aun no implementado");
  }

  @override
  void onReady(){
    load();
    super.onReady();
  }

  Future<void>load()async{
    try {
      _movies =await _moviesRepository.getTopMovies();
      update();
    } catch (e) {
      print(e);
    }
  }

  //nav
  void goEditAccount(){Get.toNamed(AppRoutes.PROFILE); }
  void goHome(){snackBarPersonal("Estas en Home","aun no implementado"); }
  void goPurchase(){snackBarPersonal("Estas en Compra","aun no implementado"); }
  void goSale(){snackBarPersonal("Estas en venta","aun no implementado"); }
  void goShipping(){snackBarPersonal("Estas en Envio","aun no implementado"); }
  void goReception(){snackBarPersonal("Estas en Reception","aun no implementado"); }
  void goReturn(){snackBarPersonal("Estas en devolucion","aun no implementado"); }
  void goOrder(){snackBarPersonal("Estas en Pedidos","aun no implementado"); }
  void goReport(){snackBarPersonal("Estas en Reporte","aun no implementado"); }
  void goConfiguration(){snackBarPersonal("Estas en Configuracion","aun no implementado"); }



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