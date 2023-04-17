import 'package:dio/dio.dart';
import 'package:pro_tests/data/model/user/user_credentials_auth_service.dart';
import 'package:pro_tests/domain/exceptions/internet_exception.dart';
import 'package:pro_tests/domain/services/auth_service.dart';

class AuthServiceImpl extends AuthService {
  final Dio dio;

  final String _signInUrl = '/api/v1/auth/signin';
  final String _signUpUrl = '/api/v1/auth/signup';

  final String _baseUrl = 'https://protests.cfeee1e5e4e00a.ru';

  AuthServiceImpl(this.dio);

  @override
  Future<String> login(UserCredentialsAuthService loginCred) async {
    try {
      final response = await dio.post(_baseUrl + _signInUrl, data: loginCred.toJson());
      return response.data['bearer'];
    } on DioError catch (e) {
      if (e.response?.statusCode == null) throw const InternetException.badConnection();
      if (e.response!.statusCode! >= 400 && e.response!.statusCode! < 500) {
        // TODO parse error from backend
        throw const InternetException.noAccount();
      }
      throw const InternetException.somethingWentWrong();
    }
  }

  @override
  Future<void> register(UserCredentialsAuthService registerCred) async {
    try {
      await dio.post(_baseUrl + _signUpUrl, data: registerCred.toJson());
    } on DioError catch (e) {
      if (e.response?.statusCode == null) throw const InternetException.badConnection();
      if (e.response!.statusCode! >= 400 && e.response!.statusCode! < 500) {
        // TODO parse error from backend
        throw const InternetException.loginAlreadyExist();
      }
      throw const InternetException.somethingWentWrong();
    }
  }
}
