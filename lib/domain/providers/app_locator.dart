import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pro_tests/data/services/auth_service.dart';
import 'package:pro_tests/domain/providers/auth_state.dart';
import 'package:pro_tests/domain/providers/service_locator.dart';
import 'package:pro_tests/domain/repository/authentication/auth_repository.dart';
import 'package:pro_tests/domain/repository/authentication/authentication.dart';
import 'package:pro_tests/domain/services/auth_service.dart';
import 'package:pro_tests/ui/states/authentication_state/authentication_state.dart';

const String _kTokenStorageKey = 'User bearer token';
const Duration _kExpireTimeout = Duration(days: 30);

class AppLocator implements ServiceLocator {
  @override
  final dio = Dio();

  @override
  final storage = const FlutterSecureStorage();

  @override
  late final AuthService authService;

  @override
  late final AuthenticationRepository authenticationRepository;

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
    final token = await _readToken();
    final isTokenValid = _isTokenValid(token);
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          options.headers['Authorization'] = 'Bearer $token';
          handler.next(options);
        },
      ),
    );
    authService = AuthServiceImpl(dio);
    authenticationRepository = AuthenticationRepositoryImpl(authService);
    authenticationStateNotifier = StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState>(
      (ref) => AuthenticationStateNotifier(authenticationRepository, isTokenValid),
    );
  }

  @override
  Future<bool> putToken(String token) async {
    final isValid = _isTokenValid(token);
    if (!isValid) return false;
    await storage.write(key: _kTokenStorageKey, value: token);
    return true;
  }

  @override
  Future<void> deleteToken() async {
    await storage.delete(key: _kTokenStorageKey);
  }

  Future<String?> _readToken() async {
    return await storage.read(key: _kTokenStorageKey);
  }

  bool _isTokenValid(String? token) {
    if (token == null) return false;
    final decoded = JwtDecoder.decode(token);
    final creationTime = decoded['iat'] as int?;
    if (creationTime == null) return false;
    final expireDate = DateTime.fromMillisecondsSinceEpoch(creationTime * 1000 + _kExpireTimeout.inMilliseconds);
    if (!DateTime.now().isBefore(expireDate)) return false;
    return true;
  }
}
