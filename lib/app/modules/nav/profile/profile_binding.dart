
import 'package:caysa2021/app/modules/nav/profile/profile_controller.dart';
import 'package:get/get.dart';


class ProfileBinding extends Bindings{
  @override
  void dependencies(){    
    Get.lazyPut(() => ProfileController());
  }
}