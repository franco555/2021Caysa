
import 'package:caysa2021/app/data/models/request_token.dart';
import 'package:caysa2021/app/data/providers/remote/authentication_api.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart' show required;

class AuthenticationRepository{
  final AuthenticationApi _api=Get.find<AuthenticationApi>();

  Future <RequestToken> newRequestToken()=>_api.newRequestToken();
  
  Future <RequestToken> authWithLogin({
    @required String username, 
    @required String password,
    @required String requestToken
    })=>_api.validateWithLogin(username:username,password:password,requestToken:requestToken);
}