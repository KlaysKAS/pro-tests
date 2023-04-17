import 'package:pro_tests/domain/services/auth_service.dart';

import '../models/user_credentials.dart';

abstract class AuthenticationRepository {
  final AuthService authService;

  AuthenticationRepository({required this.authService});

  Future<void> login(UserCredentials loginCred);

  Future<void> register(UserCredentials registerCred);

  void signOut();
}
