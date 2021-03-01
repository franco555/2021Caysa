import 'package:caysa2021/app/data/models/request_token.dart';
import 'package:caysa2021/app/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

class AuthenticationApi{
  final Dio _dio=Get.find<Dio>();

  Future<RequestToken> newRequestToken() async{
    final Response response =await _dio.get("/authentication/token/new",queryParameters: {
      "api_key":Constants.THE_MOVIE_DB_API_KEY
    });

    return RequestToken.fromJson(response.data);
  }
}