import 'package:dio/dio.dart';

mixin HttpService {
  static final dio = Dio(BaseOptions(baseUrl: 'http://localhost:3000'));
}
