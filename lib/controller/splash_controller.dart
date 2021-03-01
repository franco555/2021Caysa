import 'package:caysa2021/Auth/presentation/Sc_Presentation.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
 @override
 void onReady(){
   super.onReady();
   Future.delayed(
     Duration(seconds: 2),
     (){
       Get.to(
         ScPresentation(),
         transition:Transition.zoom,
       );       
     }
   );
 }

 @override
 void onClose(){
   super.onClose();
 }
}