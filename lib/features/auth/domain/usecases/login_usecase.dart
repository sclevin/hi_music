import 'package:flutter_music_player/features/auth/domain/entities/user.dart';
import 'package:flutter_music_player/features/auth/domain/repositories/i_auth_repostory.dart';


class LoginUseCase {
  final IAuthRepository repository;

  LoginUseCase(this.repository);

  Future<User> call(String username, String password) {
    return repository.login(username, password);
  }
}