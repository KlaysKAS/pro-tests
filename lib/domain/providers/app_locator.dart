import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/data/services/auth_service.dart';
import 'package:pro_tests/domain/providers/auth_state.dart';
import 'package:pro_tests/domain/providers/service_locator.dart';
import 'package:pro_tests/domain/repository/authentication/auth_repository.dart';
import 'package:pro_tests/domain/repository/token_manager/token_manager.dart';
import 'package:pro_tests/ui/states/authentication_state/authentication_state.dart';

class AppLocator implements ServiceLocator {
  @override
  final dio = Dio();
  @override
  final tokenManager = TokenManager();

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
  Future<void> init() async {
    final token = await tokenManager.readToken();
    final isTokenValid = tokenManager.isTokenValid(token);
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          options.headers['Authorization'] = 'Bearer $token';
          handler.next(options);
        },
      ),
    );

    _initAuth(isTokenValid);
  }

  void _initAuth(bool isTokenValid) {
    final authService = AuthServiceImpl(dio);
    final authenticationRepository = AuthenticationRepositoryImpl(authService);
    authenticationStateNotifier = StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState>(
      (ref) => AuthenticationStateNotifier(authenticationRepository, isTokenValid),
    );
  }
}
