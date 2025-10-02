import 'dart:developer';

import 'package:bookia/features/Auth/data/model/auth_parames.dart';
import 'package:bookia/features/Auth/data/model/auth_response/auth_response.dart';
import 'package:bookia/services/dio/endpoint.dart';
import 'package:bookia/services/dio/provider.dart';


class AuthRepo {
  static Future<AuthResponse?> register(AuthParames parames) async {
    try {
  var res = await DioProvider.post(
    path: Endpoint.register,
    data: parames.ToJson().toString(),
  );
  if (res.statusCode == 201) {
    var body = res.data;
    return AuthResponse.fromjson(body);
  
  } else {
    return null;
  }
} on Exception catch (e) {
  log("Exception: $e");
  return null;
}
  }

  static login(AuthParames parames) {
    DioProvider.post(path: Endpoint.login, data: parames.ToJson());
  }
}
