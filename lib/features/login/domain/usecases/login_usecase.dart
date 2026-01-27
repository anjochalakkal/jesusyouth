import 'package:jesusyouth/features/login/domain/entities/user.dart';
import 'package:jesusyouth/features/login/domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<User> call(String email, String password) {
    return repository.login(email: email, password: password);
  }
}
