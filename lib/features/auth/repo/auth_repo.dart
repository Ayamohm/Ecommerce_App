import 'dart:developer';

import 'package:commerce_app/core/networking/dio_helper.dart';
import 'package:commerce_app/features/auth/model/login_response_model.dart';
import 'package:dartz/dartz.dart';

import '../../../core/networking/dio_endpoints.dart';
import '../../../core/utils/service_locators.dart';
import '../../../core/utils/storage_helper.dart';

class Authrepo {

  final Helper helper;
  Authrepo(this.helper);

  Future<Either<String, LoginResponseModel>> login({
    required String username,
    required String password,
  }) async {
    final response = await helper.postRequest(
      endpint: ApiEndpints.LoginUrl,
      data: {
        "username": username,
        "password": password,
      },
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      LoginResponseModel loginResponseModel= LoginResponseModel.fromJson(response.data,);

      if(loginResponseModel.token!=null){
        await sl<StorageHelper>().saveToken(loginResponseModel.token!);
        return Right(loginResponseModel);
      }else{
        return Left(response.data.toString());
      }
    }else {
      return Left(response.data.toString());
    }
  }

}
