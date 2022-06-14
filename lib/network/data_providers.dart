import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:e_learning/model/auth_response.dart';
import 'package:e_learning/network/api_base.dart';
import 'package:e_learning/network/api_path.dart';
import 'package:e_learning/network/dio_exception.dart';
import 'data_log.dart';

class DataProvider {
  late Dio dio;

  DataProvider() {
    BaseOptions options = BaseOptions(
      receiveTimeout: 30000,
      connectTimeout: 30000,
      validateStatus: (status) => true,
      followRedirects: false,
    );
    dio = Dio(options);

    dio.options.headers.addAll({
      // 'content-type': 'application/json',
      // 'authorization': AppSession.accessToken == null
      //     ? ""
      //     : 'Bearer ' + AppSession.accessToken.toString()
    });
    dio.interceptors.add(DataLog());
  }
  Future<AuthResponse> performLogin(String userName, String password) async {
    try {
      Response response = await dio.post(
          APIBase.baseUrl + APIPathHelper.getValue(APIPath.login),
          data: jsonEncode({"username": userName, "password": password}));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return AuthResponse.fromJson(response.data);
      } else {
        throw DioException.handleError(
            response.statusCode!, response.statusMessage ?? '');
      }
    } on DioError catch (e) {
      throw DioException.fromDioError(e).toString();
    }
  }
}
