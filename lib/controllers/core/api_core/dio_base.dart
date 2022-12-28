import 'package:dio/dio.dart';

class DioBase {
  static late Dio dioInstance;

  static void initDio() {
    //TODO: CHANGE TO BACKEND DOMAIN
    final baseOptions =
        BaseOptions(baseUrl: 'https://1f22-2-49-191-252.in.ngrok.io');
    dioInstance = Dio(baseOptions);
  }
}

// USUAL: 'http://10.0.2.2:3001'