import 'package:dio/dio.dart';

import 'i_api_service.dart';


class ApiService implements IApiService {
  final Dio dio;

  ApiService(this.dio) {
    // dio.options.baseUrl = Constants.apiBaseUrl;
  }

  @override
  Future<Response> post(String path, {Map<String, dynamic>? data}) async {
    try {
      return await dio.post(path, data: data);
    } catch (e) {
      throw Exception('网络请求失败: $e');
    }
  }
}