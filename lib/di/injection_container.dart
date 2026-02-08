import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:jesusyouth/features/login/data/datasources/auth_remote_datasource.dart';
import 'package:jesusyouth/features/login/data/repositories/auth_repository_impl.dart';
import 'package:jesusyouth/features/login/domain/repositories/auth_repository.dart';
import 'package:jesusyouth/features/login/domain/usecases/login_usecase.dart';
import 'package:jesusyouth/features/login/presentation/bloc/login_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // ---------------- Core ----------------
  sl.registerLazySingleton(
    () => Dio(BaseOptions(baseUrl: "https://api.myapp.com")),
  );

  // ---------------- DataSource ----------------
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl()),
  );

  // ---------------- Repository ----------------
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));

  // ---------------- UseCase ----------------
  sl.registerLazySingleton(() => LoginUseCase(sl()));

  // ---------------- Bloc (ALWAYS LAST) ----------------
  sl.registerFactory(() => LoginBloc(sl()));
}
