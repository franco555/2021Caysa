import 'package:caysa2021/app/modules/auth/resetpassword/resetpassword_controller.dart';
import 'package:get/get.dart';

class ResetPasswordBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => ResetPasswordController());
  }
}