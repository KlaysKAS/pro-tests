import '../models/user_credentials.dart';

abstract class AuthenticationRepository{

  User login(UserCredentials loginCred);

  User register(UserCredentials registerCred);

  void signOut();

}