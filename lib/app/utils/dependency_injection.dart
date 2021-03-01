import 'package:caysa2021/app/data/providers/authentication_api.dart';
import 'package:caysa2021/app/data/repositories/authentication_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DependencyInjection{
  static void init(){
    Get.lazyPut<Dio>(()=>Dio(BaseOptions(baseUrl: "https://api.themoviedb.org/3")));
    Get.lazyPut<AuthenticationApi>(()=>AuthenticationApi());
    Get.lazyPut<AuthenticationRepository>(()=>AuthenticationRepository());
  }
}