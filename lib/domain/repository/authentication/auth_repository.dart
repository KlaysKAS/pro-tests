import 'package:pro_tests/domain/models/user_credentials/user_credentials.dart';
import 'package:pro_tests/domain/repository/authentication/authentication.dart';
import 'package:pro_tests/domain/services/auth_service.dart';
import 'package:pro_tests/domain/models/user_credentials/user_credentials_mapper.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  @override
  final AuthService authService;

  AuthenticationRepositoryImpl(this.authService);

  @override
  Future<String> login(UserCredentials loginCred) async {
    final data = UserCredentialsMapper.fromForm(loginCred);
    return await authService.login(data);
  }

  @override
  Future<void> register(UserCredentials registerCred) async {
    final data = UserCredentialsMapper.fromForm(registerCred);
    await authService.register(data);
  }
}
