import '../models/user_credentials.dart';

abstract class AuthenticationRepository {
  Future<void> login(UserCredentials loginCred);

  Future<void> register(UserCredentials registerCred);

  void signOut();
}
