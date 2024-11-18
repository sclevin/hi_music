import 'package:flutter_music_player/core/services/i_api_service.dart';

import '../../domain/entities/user.dart';
import '../../domain/repositories/i_auth_repostory.dart';
import '../models/user_model.dart';


class AuthRepository implements IAuthRepository {
  final IApiService apiService;

  AuthRepository(this.apiService);

  @override
  Future<User> login(String username, String password) async {
    final response = await apiService.post('/login', data: {
      'username': username,
      'password': password,
    });

    // 将 JSON 数据转换为 UserModel
    UserModel userModel = UserModel.fromJson(response.data);

    // 将 UserModel 转换为 User 实体
    return userModel.toEntity();
  }
}