import 'package:caysa2021/app/data/providers/local/local_auth.dart';
import 'package:caysa2021/app/data/providers/remote/authentication_api.dart';
import 'package:caysa2021/app/data/providers/remote/movies_api.dart';
import 'package:caysa2021/app/data/repositories/local/local_auth_repository.dart';
import 'package:caysa2021/app/data/repositories/remote/authentication_repository.dart';
import 'package:caysa2021/app/data/repositories/remote/movies_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class DependencyInjection{
  static void init(){
    Get.lazyPut<FlutterSecureStorage>(()=>FlutterSecureStorage(),fenix: true);
    Get.lazyPut<Dio>(()=>Dio(BaseOptions(baseUrl: "https://api.themoviedb.org/3")));

    //dependencias
    Get.lazyPut<AuthenticationApi>(()=>AuthenticationApi(),fenix: true);
    Get.lazyPut<LocalAuth>(()=>LocalAuth(),fenix: true);
    Get.lazyPut<MoviesApi>(()=>MoviesApi(),fenix: true);
    

    //repositorios
    Get.lazyPut<AuthenticationRepository>(()=>AuthenticationRepository(),fenix: true);
    Get.lazyPut<LocalAuthRepository>(()=>LocalAuthRepository(),fenix: true);
    Get.lazyPut<MoviesRepository>(()=>MoviesRepository(),fenix: true);
  }
}