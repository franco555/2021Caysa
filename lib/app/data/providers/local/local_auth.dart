
import 'dart:convert';

import 'package:caysa2021/app/data/models/request_token.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class LocalAuth{
  static const KEY="session";
  static const KEY_MODO="mode";
  final FlutterSecureStorage _storage=Get.find<FlutterSecureStorage>();

  //Modo
  Future<void> setModo(String modo)async {
    await _storage.write(key: KEY_MODO, value: modo);
  }

  Future<void> clearModo()async {
    await _storage.delete(key: KEY_MODO);
  }

  Future<bool> getModo()async {
    final String data= await _storage.read(key: KEY_MODO);
    if(data!=null){
      return data=="Oscuro"? true:false;
    }

    setModo("Claro");
    return false;
  }

  //Token en el dispositivo
  Future<void> setSession(RequestToken requestToken)async {
    await _storage.write(key: KEY, value: jsonEncode(requestToken.toJson()));
  }

  Future<void> clearSession()async {
    await _storage.delete(key: KEY);
  }

  Future<RequestToken> getSession()async {
    final String data= await _storage.read(key: KEY);
    if(data!=null){
      final RequestToken requestToken= RequestToken.fromJson(jsonDecode(data));
      if(DateTime.now().isBefore(requestToken.expiresAt)){
        return requestToken;
      }
      return null;
    }
    return null;
  }
}