import 'package:flutter/cupertino.dart';
import 'package:pro_tests/domain/models/user_credentials.dart';
import 'package:pro_tests/domain/services/auth_service.dart';

abstract class AuthenticationRepository {
  @protected
  final AuthService authService;

  AuthenticationRepository(this.authService);

  Future<String> login(UserCredentials loginCred);

  Future<void> register(UserCredentials registerCred);
}
