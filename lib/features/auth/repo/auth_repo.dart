import 'dart:developer';

import 'package:commerce_app/core/networking/dio_helper.dart';
import 'package:commerce_app/features/auth/model/login_response_model.dart';
import 'package:dartz/dartz.dart';

import '../../../core/networking/dio_endpoints.dart';

class Authrepo {
  Future<Either<String, LoginResponseModel>> login({
    required String username,
    required String password,
  }) async {
    final response = await Helper.postRequest(
      endpint: ApiEndpints.LoginUrl,
      data: {
        "username": username,
        "password": password,
      },
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      final model = LoginResponseModel.fromJson(
        response.data,
      );
      return Right(model);
    } else {
      return Left(response.data.toString());
    }
  }
}
