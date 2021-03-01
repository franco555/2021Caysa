
import 'package:caysa2021/app/data/models/request_token.dart';
import 'package:caysa2021/app/data/repositories/authentication_repository.dart';
import 'package:caysa2021/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{

  final AuthenticationRepository _authenticationRepository=Get.find<AuthenticationRepository>();
  
  @override
  void onReady(){
    _init();
  }

  _init() async {
    try{
      RequestToken requestToken= await _authenticationRepository.newRequestToken();
      Get.offNamed(AppRoutes.HOME);
    }catch(e){
      print(e);
    }
    
  }
}