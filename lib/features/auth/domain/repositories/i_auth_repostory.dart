
import '../entities/user.dart';

abstract class IAuthRepository {
  Future<User> login(String username, String password);
}