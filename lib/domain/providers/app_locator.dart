import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/data/services/auth_service.dart';
import 'package:pro_tests/domain/providers/auth_state.dart';
import 'package:pro_tests/domain/providers/service_locator.dart';
import 'package:pro_tests/domain/repository/authentication/auth_repository.dart';
import 'package:pro_tests/domain/repository/token_manager/token_manager.dart';
import 'package:pro_tests/ui/router/router.dart';
import 'package:pro_tests/ui/router/routes.dart';
import 'package:pro_tests/ui/states/authentication_state/authentication_state.dart';

class AppLocator implements ServiceLocator {
  @override
  final dio = Dio();

  @override
  late final tokenManager = TokenManager(_initInterceptors, _removeInterceptors);

  @override
  late final StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState> authenticationStateNotifier;

  // @override
  // // TODO: implement testAttemptStateNotifier
  // TestAttemptStateNotifier get testAttemptStateNotifier => throw UnimplementedError();
  //
  // @override
  // // TODO: implement testCreationStateNotifier
  // TestCreationStateNotifier get testCreationStateNotifier => throw UnimplementedError();
  //
  // @override
  // // TODO: implement testListStateNotifier
  // TestListStateNotifier get testListStateNotifier => throw UnimplementedError();

  @override
  Future<bool> init() async {
    final token = await tokenManager.readToken();
    final isTokenValid = tokenManager.isTokenValid(token);

    _initInterceptors(token);
    _initAuth(isTokenValid);
    return isTokenValid;
  }

  void _initInterceptors(String? token) {
    if (token != null) {
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
            options.headers['Authorization'] = 'Bearer $token';
            handler.next(options);
          },
        ),
      );
      dio.interceptors.add(_UnauthorizedInterceptor(tokenManager));
    }
  }

  void _removeInterceptors() {
    dio.interceptors.clear();
  }

  void _initAuth(bool isTokenValid) {
    final authService = AuthServiceImpl(dio);
    final authenticationRepository = AuthenticationRepositoryImpl(authService);
    authenticationStateNotifier = StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState>(
      (ref) => AuthenticationStateNotifier(authenticationRepository),
    );
  }
}

class _UnauthorizedInterceptor extends Interceptor {
  final TokenManager tm;

  _UnauthorizedInterceptor(this.tm);

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      tm.deleteToken();
      AppRouter.router.replaceNamed(AppRoutes.auth.name);
    }
    super.onError(err, handler);
  }
}
