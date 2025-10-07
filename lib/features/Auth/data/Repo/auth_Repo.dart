
import 'dart:developer';
import 'package:bookia/features/Auth/data/model/auth_parames.dart';
import 'package:bookia/features/Auth/data/model/auth_response/auth_response.dart';
import 'package:bookia/services/dio/endpoint.dart';
import 'package:bookia/services/dio/provider.dart';
import 'package:bookia/services/shared_pref/shared.dart';
import 'package:dio/dio.dart';

class AuthRepo {
  static Future<AuthResponse?> register(AuthParames parames) async {
    try {
      final res = await DioProvider.post(
        path: Endpoint.register,
        data: parames.ToJson(),
      );

      // تأكد إن الريسبونس مش null
      if (res != null && res.statusCode == 201) {
        return AuthResponse.fromjson(res.data);
      } else {
        log("❌ Register failed - status: ${res?.statusCode}");
        log("Response body: ${res?.data}");
        return null;
      }
    } on DioException catch (e) {
      // لو السيرفر رجع خطأ (زي 422)
      log("⚠️ DioException - Status: ${e.response?.statusCode}");
      log("Response: ${e.response?.data}");
      return null;
    } catch (e) {
      // أي استثناء تاني
      log("🚨 Unexpected error: $e");
      return null;
    }
  }

  
  static Future<AuthResponse?> login(AuthParames parames) async {
    try {
      final res = await DioProvider.post(
        path: Endpoint.login,
        data: parames.ToJson(),
      );

      // تأكد إن الريسبونس مش null
      if (res != null && res.statusCode == 200) {
        var body = res.data;
        var dataUser= AuthResponse.fromjson(body);
        sharedPref.saveUserData(dataUser.data);
        return dataUser;
      } else {
        log("❌ Register failed - status: ${res?.statusCode}");
        log("Response body: ${res?.data}");
        return null;
      }
    } on DioException catch (e) {
      // لو السيرفر رجع خطأ (زي 422)
      log("⚠️ DioException - Status: ${e.response?.statusCode}");
      log("Response: ${e.response?.data}");
      return null;
    } catch (e) {
      // أي استثناء تاني
      log("🚨 Unexpected error: $e");
      return null;
    }
  }
}
