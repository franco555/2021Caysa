//import 'package:caysa2021/app/data/models/request_token.dart';
//import 'package:caysa2021/app/data/repositories/local/local_auth_repository.dart';
import 'package:caysa2021/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{

  //final  LocalAuthRepository _localAuthRepository=Get.find<LocalAuthRepository>();

  @override
  void onReady(){
    super.onReady();
    _init();
  }

  _init() async {
    try{
      //final RequestToken requestToken=await _localAuthRepository.session;
      Future.delayed(Duration(seconds: 2),(){
        //Get.offNamed(requestToken!=null?AppRoutes.HOME:AppRoutes.LOGIN);
        Get.offNamed(AppRoutes.HOME);
      });
    }catch(e){
      print(e);
    }
    
  }
}