import 'package:caysa2021/app/modules/auth/createaccount/createaccount_controller.dart';
import 'package:get/get.dart';

class CreateAccountdBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => CreateAccountController());
  }
}