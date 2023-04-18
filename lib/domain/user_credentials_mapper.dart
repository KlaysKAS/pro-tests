import 'package:pro_tests/data/model/user/user_credentials_auth_service.dart';
import 'package:pro_tests/domain/models/user_credentials.dart';

class UserCredentialsMapper {
  static UserCredentials fromBackend(UserCredentialsAuthService cred) {
    final name = cred.fullName == null ? ['', ''] : cred.fullName!.split(' ');
    return UserCredentials(
        username: cred.login,
        password: '',
        firstname: name.first,
        lastname: name.last);
  }

  static UserCredentialsAuthService fromForm(UserCredentials cred) {
    return UserCredentialsAuthService(
        cred.username, cred.password, '${cred.firstname} ${cred.lastname}');
  }
}
