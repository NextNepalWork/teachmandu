import 'dart:developer';
import 'package:dio/dio.dart';

class DataLog extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log("--> ${options.method} ${options.path}");
    //print("Content type: ${options.contentType}");
    log(options.headers.toString());

    String responseAsString = options.data.toString();

    log(" \n<-- START PARAMS: \n" +
        responseAsString +
        "\nEND PARAMS -->\n<-- END HTTP");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("<-- ${response.statusCode} ${response.requestOptions.method} ${response.requestOptions.path}");
    String responseAsString = response.data.toString();
    log(" \n<-- START RESPONSE: \n" +
        responseAsString +
        "\nEND RESPONSE -->\n<-- END HTTP");

    super.onResponse(response, handler);
  }
}
