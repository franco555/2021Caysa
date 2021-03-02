import 'package:caysa2021/app/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => LoginController());
  }
}