import 'package:dio/dio.dart';

abstract class IApiService {
  Future<Response> post(String path, {Map<String, dynamic>? data});
}