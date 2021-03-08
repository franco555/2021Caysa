import 'package:caysa2021/app/data/repositories/local/local_auth_repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  final LocalAuthRepository _localAuthRepository=Get.find<LocalAuthRepository>();
  RxBool _swithMode=false.obs;

  bool get getSwith=>this._swithMode.value;

  Future<void> changeSwith() async { 
    this._swithMode.value=!_swithMode.value;
    String modo= _swithMode.value ?"Oscuro":"Claro";
    await _localAuthRepository.setModo(modo);
    getModo();
  }

  Future<void>getModo() async{
    bool modo= await (_localAuthRepository.modo);
    this._swithMode.value=modo;
  }

  @override
  void onReady(){
    super.onReady();
    getModo();
  }

}