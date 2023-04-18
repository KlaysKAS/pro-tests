import 'package:pro_tests/data/model/user/user_credentials_auth_service.dart';

abstract class AuthService {
  Future<String> login(
      UserCredentialsAuthService loginCred); // must return token

  Future<void> register(UserCredentialsAuthService registerCred);
}
