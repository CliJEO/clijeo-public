import 'package:dio/dio.dart';

class DioBase {
  static late Dio dioInstance;

  static void initDio() {
    //TODO: CHANGE TO BACKEND DOMAIN
    final baseOptions = BaseOptions(baseUrl: 'http://10.0.2.2:3001');
    dioInstance = Dio(baseOptions);
  }
}
