import 'package:caysa2021/app/modules/auth/createuserpassword/createuserpassword_controller.dart';
import 'package:get/get.dart';

class CreateUserPasswordBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => CreateUserPasswordController());
  }
}