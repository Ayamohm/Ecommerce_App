import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'dio_endpoints.dart';

class Helper {
  static Dio? dio;
  static initDio() {
    dio ??= Dio(
      BaseOptions(
        baseUrl: ApiEndpints.BaseUrl,
        receiveDataWhenStatusError: true,
        validateStatus: (status) => true,
      ),
    );
    dio!.interceptors.add(PrettyDioLogger());
  }

  static Future<Response> postRequest({
    required String endpint,
    required Map<String, dynamic> data,
  }) async {
    try {
      Response response = await dio!.post(
        endpint,
        data: data,
      );
      return response;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
