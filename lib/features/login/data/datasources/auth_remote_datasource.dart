import 'package:dio/dio.dart';
import 'package:jesusyouth/features/login/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl(this.dio);

  @override
  Future<UserModel> login(String email, String password) async {
    final response = await dio.post(
      "/login",
      data: {"email": email, "password": password},
    );

    return UserModel.fromJson(response.data);
  }
}
