import 'package:caysa2021/app/modules/auth/forgotpassword/forgotpassword_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => ForgotPasswordController());
  }
}