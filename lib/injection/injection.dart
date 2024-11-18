import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../core/services/api_service.dart';
import '../features/auth/data/repositories/auth_repository.dart';
import '../features/auth/domain/usecases/login_usecase.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository(getIt<ApiService>()));
  getIt.registerLazySingleton<LoginUseCase>(() => LoginUseCase(getIt<AuthRepository>()));
}