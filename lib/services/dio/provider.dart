import 'package:bookia/services/dio/endpoint.dart';
import 'package:dio/dio.dart';

class DioProvider {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(baseUrl: Endpoint.BaseUrl,connectTimeout: Duration(seconds: 3)),);
  }

  static post({
    required String path,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  }) async {
    return await dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(headers: header),
    );
  }

  static get({
    required String path,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  }) async {
    return await dio.get(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(headers: header),
    );
  }

  static delete({
    required String path,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  }) async {
   return await dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(headers: header),
    );
  }

  static put({
    required String path,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  }) async {
   return await dio.put(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(headers: header),
    );
  }

  static patch({
    required String path,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  }) async {
   return await dio.patch(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(headers: header),
    );
  }
}
