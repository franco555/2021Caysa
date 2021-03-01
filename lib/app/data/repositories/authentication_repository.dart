
import 'package:caysa2021/app/data/models/request_token.dart';
import 'package:caysa2021/app/data/providers/authentication_api.dart';
import 'package:get/get.dart';

class AuthenticationRepository{
  final AuthenticationApi _api=Get.find<AuthenticationApi>();
  Future <RequestToken> newRequestToken()=>_api.newRequestToken();
}